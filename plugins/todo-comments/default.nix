{ config, lib, ... }:

{
  plugins.todo-comments.enable = true;

  keymaps = lib.mkIf config.plugins.telescope.enable [{
    key = "<leader>ft";
    action = "<cmd>TodoTelescope<CR>";
    options = {
      desc = "Telescope todo_comments";
    };
  }];
}
