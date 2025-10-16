{ pkgs, ... }:

{
  extraPlugins = with pkgs.vimPlugins; [
    ansible-vim
  ];

  autoCmd = [{
    callback.__raw = /* lua */ ''
      function()
        vim.opt.filetype = "yaml.ansible"
      end
    '';
    event = [
      "BufRead"
      "BufNewFile"
    ];
    pattern = [
      "configure_*.y{,a}ml"
      "*/pre_tasks/*.y{,a}ml"
      "*/post_tasks/*.y{,a}ml"
      "*/playbooks/*.y{,a}ml"
    ];
  }];
}
