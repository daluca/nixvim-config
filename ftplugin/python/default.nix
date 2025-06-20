{
  opts = rec {
    expandtab = true;
    softtabstop = 4;
    shiftwidth = softtabstop;
    colorcolumn = builtins.concatStringsSep "," [
      "80"
      "120"
    ];
  };
}
