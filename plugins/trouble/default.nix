{
  plugins.trouble.enable = true;

  keymaps = [
    {
      key = "<leader>xx";
      action = "<cmd>Trouble diagnostics toggle<CR>";
      options.desc = "Diagnostics (Trouble)";
    }
    {
      key = "<leader>xX";
      action = "<cmd>Trouble diagnostics toggle filter.buf=0<CR>";
      options.desc = "Buffer Diagnostics (Trouble)";
    }
  ];
}
