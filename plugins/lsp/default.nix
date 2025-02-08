{
  imports = [
    ./nixd
    ./lua_ls
  ];

  plugins.lsp = {
    enable = true;
  };
}
