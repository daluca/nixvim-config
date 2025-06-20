{
  imports = [
    ./ansible
    ./bash
    ./helm
    ./lua
    ./nix
    ./rust
    ./typos
    ./yaml
  ];

  plugins.lsp = {
    enable = true;
  };
}
