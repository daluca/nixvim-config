{
  imports = [
    ./bash
    ./lua
    ./nix
    ./yaml
  ];

  plugins.lsp = {
    enable = true;
  };
}
