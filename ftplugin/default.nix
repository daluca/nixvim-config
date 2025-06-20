{
  imports = [
    { files."ftplugin/nix.lua" = ./nix; }
    { files."ftplugin/rust.lua" = ./rust; }
    { files."ftplugin/gitcommit.lua" = ./gitcommit; }
    { files."ftplugin/yaml.lua" = ./yaml; }
    { files."ftplugin/python.lua" = ./python; }
  ];
}
