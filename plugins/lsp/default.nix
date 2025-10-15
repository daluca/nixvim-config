{
  imports = [
    ./ansible
    ./bash
    ./helm
    ./lua
    ./nix
    ./python
    ./rust
    ./typos
    ./yaml
  ];

  plugins.lsp = {
    enable = true;
    inlayHints = true;
  };

  keymaps = [{
    action.__raw = /* lua */ ''
      function(bufnr)
        vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled(), { bufnr = bufnr })
      end
    '';
    key = "<leader>i";
    mode = "n";
  }];
}
