{
  imports = [
    ./bash
    ./helm
    ./lua
    ./nix
    ./yaml
  ];

  plugins.lsp = {
    enable = true;
  };
}
