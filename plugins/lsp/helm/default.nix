{
  plugins.lsp.servers.helm_ls.enable = true;

  plugins.helm.enable = true;

  autoCmd = [{
    event = "Filetype";
    pattern = "helm";
    command = "LspRestart";
  }];
}
