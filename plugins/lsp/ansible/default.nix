{ pkgs, ... }:

{
  plugins.lsp.servers.ansiblels.enable = true;

  extraPackages = with pkgs; [
    ansible-lint
  ];
}
