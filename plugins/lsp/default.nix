{
  imports = [
    ./nixd
    ./lua_ls
    ./bashls
  ];

  plugins.lsp = {
    enable = true;
  };
}
