{ pkgs, ... }:

{
  plugins.lsp.servers.ansiblels = rec {
    enable = true;
    package = pkgs.ansible-language-server-deprecated;
  };

  extraPackages = with pkgs; [
    ansible-lint
  ];
}
