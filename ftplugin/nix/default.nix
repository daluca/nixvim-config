{
  opts = rec {
    expandtab = true;
    softtabstop = 2;
    shiftwidth = softtabstop;
    colorcolumn = builtins.concatStringsSep "," [
      "100"
    ];
  };
}
