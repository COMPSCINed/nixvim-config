{
  plugins = {
    neo-tree = {
      enable = true;
      settings = {
        filesystem = {
          filtered_items = {
            visible = true;
            hide_dotfiles = false;
            hide_gitignored = false;
          };
        };
      };
    };

    web-devicons.enable = true;
    nui.enable = true;
    indent-blankline = {
      enable = true;
      settings = {
        indent.char = "▏";
        scope.show_start = false;
        scope.show_end = false;
      };
    };
    gitsigns = {
      enable = true;
      settings.current_line_blame = true;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>tt";
      action = "<cmd>Neotree toggle left<cr>";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>tr";
      action = "<cmd>Neotree toggle right<cr>";
      options = {
        noremap = true;
        silent = true;
      };
    }
  ];
}
