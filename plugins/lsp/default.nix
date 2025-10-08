{
  imports = [
    ./bash
    ./helm
    ./lua
    ./nix
    ./python
    ./rust
    ./typos
    ./yaml
  ];

  plugins.lsp = {
    enable = true;
  };
}
