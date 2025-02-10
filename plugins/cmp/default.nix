{
  plugins.cmp = {
    enable = true;
    settings = {
      experimental = {
        ghost_text = true;
      };
      sources = [
        { name = "nvim_lsp"; }
        { name = "buffer"; }
        { name = "path"; }
      ];
      window = {
        completion.border = "single";
        documentation.border = "single";
      };
      mapping = {
        "<TAB>" = /* lua */ "cmp.mapping.select_next_item()";
        "<S-TAB>" = /* lua */ "cmp.mapping.select_prev_item()";
        "<C-b>" = /* lua */ "cmp.mapping.scroll_docs(-4)";
        "<C-f>" = /* lua */ "cmp.mapping.scroll_docs(4)";
        "<C-Space>" = /* lua */ "cmp.mapping.complete()";
        "<C-e>" = /* lua */ "cmp.mapping.abort()";
        "<CR>" = /* lua */ "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })";
      };
    };
  };

  plugins.cmp.cmdline = {
    "/" = {
      mapping.__raw = /* lua */ "cmp.mapping.preset.cmdline()";
      sources = [{
        name = "buffer";
      }];
    };
    "?" = {
      mapping.__raw = /* lua */ "cmp.mapping.preset.cmdline()";
      sources = [{
        name = "buffer";
      }];
    };
    ":" = {
      mapping.__raw = /* lua */ "cmp.mapping.preset.cmdline()";
      sources = [
        {
          name = "path";
        }
        {
          name = "cmdline";
          option.ignore_cmds = [
            "Man"
            "!"
          ];
        }
      ];
    };
  };
}
