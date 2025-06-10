{
  imports = [
    ./ansible
    ./bash
    ./helm
    ./lua
    ./nix
    ./rust
    ./yaml
  ];

  plugins.lsp = {
    enable = true;
  };
}
