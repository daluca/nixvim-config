{ pkgs, ... }:

{
  extraPlugins = with pkgs.vimPlugins; [
    url-open
  ];

  extraConfigLua = /* lua */ ''
    require("url-open").setup({
      open_app = "firefox",
    })
  '';

  keymaps = [
    {
      key = "<leader>uo";
      action = "<cmd>URLOpenUnderCursor<CR>";
      options.desc = "Open URI under cursor";
    }
    {
      key = "<leader>uh";
      action = "<cmd>URLOpenHighlightAll<CR>";
      options.desc = "Highlight all URI in current buffer";
    }
    {
      key = "<leader>uc";
      action = "<cmd>URLOpenHighlightAllClear<CR>";
      options.desc = "Clear all highlight URI in current buffer";
    }
  ];
}
