{
  plugins.lsp.servers.nixd = {
    enable = true;
    settings = {
      nixpkgs = {
        expr = /* nix */ "import <nixpkgs> { }";
      };
      formatting.command = ["nixfmt"];
      options = rec {
        nixos = {
          expr = /* nix */ "(builtins.getFlake \"github:daluca/nix-config\").nixosConfigurations.artemis.options";
        };
        home-manager = {
          expr = nixos.expr + /* nix */ ".home-manager.users.type.getSubOptions []";
        };
        nixvim = {
          expr = /* nix */ "(builtins.getFlake \"github:daluca/nixvim-config\").packages.x86_64-linux.neovim.options";
        };
      };
    };
  };
}
