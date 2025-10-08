{
  description = "nixvim personal config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    nixvim.url = "github:nix-community/nixvim";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";

    git-hooks.url = "github:cachix/git-hooks.nix";
    git-hooks.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, nixvim, git-hooks }:
  let
    supportedSystems = [ "x86_64-linux" "aarch64-linux" ];
    forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
  in {
    checks = forAllSystems (system:
      let
        nixvimLib = nixvim.lib.${system};
        git-hooks' = git-hooks.lib.${system};
        packages = self.packages.${system};
      in {
        default = nixvimLib.check.mkTestDerivationFromNvim packages.default;
        pre-commit = git-hooks'.run {
          src = ./.;
          hooks = import ./.pre-commit-config.nix;
        };
      }
    );

    packages = forAllSystems (system:
      let
        nixvim' = nixvim.legacyPackages.${system};
      in {
        default = self.packages.${system}.neovim;
        neovim = nixvim'.makeNixvim [ ./config ./plugins ./ftplugin ];
      }
    );

    devShells = forAllSystems (system:
      let
        inherit (self.checks.${system}) pre-commit;
        inherit (self.packages.${system}) neovim;
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        default = pkgs.mkShell {
          inherit (pre-commit) shellHook;
          name = "nixvim-config";
          packages = with pkgs; pre-commit.enabledPackages ++ [
            just
            neovim
          ];
          JUST_COMMAND_COLOR = "blue";
        };
      }
    );
  };
}
