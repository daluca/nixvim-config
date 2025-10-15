{ pkgs }:
let
  inherit (pkgs) callPackage;
in {
  ansible-language-server-deprecated = callPackage ./ansible-language-server { };
}
