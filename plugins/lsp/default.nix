{
  imports = [
    ./bash
    ./lua
    ./nix
  ];

  plugins.lsp = {
    enable = true;
  };
}
