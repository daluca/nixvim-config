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
          expr = /* nix */ "(builtins.getFlake (\"git+file://\" + toString ./.)).nixosConfigurations.artemis.options";
        };
        home_manager = {
          expr = nixos.expr + /* nix */ ".home-manager.users.type.getSubOptions []";
        };
      };
    };
  };
}
