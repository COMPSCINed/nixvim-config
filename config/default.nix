{
  imports = [
    ./avante.nix
    ./bufferline.nix
    ./cmp.nix
    ./comment.nix
    ./lean.nix
    ./lsp-lines.nix
    ./lsp.nix
    ./lspsaga.nix
    ./lualine.nix
    ./luasnip.nix
    ./lz-n.nix
    ./noice.nix
    ./none-ls.nix
    ./notify.nix
    ./telescope.nix
    ./treesitter.nix
    ./ui.nix
    ./undotree.nix
  ];

  viAlias = true;
  vimAlias = true;

  opts = {
    number = true;
    relativenumber = true;

    # Enable the sign column to prevent the screen from jumping
    signcolumn = "yes";

    # Set tabs to 2 spaces
    tabstop = 2;
    softtabstop = 2;
    showtabline = 0;
    expandtab = true;

    # Enable auto indenting and set it to spaces
    smartindent = true;
    shiftwidth = 2;

    # Enable smart indenting (see https://stackoverflow.com/questions/1204149/smart-wrap-in-vim)
    breakindent = true;

    # Enable persistent undo history
    swapfile = false;
    autoread = true;
    backup = false;
    undofile = true;

    # Enable 24-bit colors
    termguicolors = true;

    # More space in the neovim command line for displaying messages
    cmdheight = 0;
  };

  globals.mapleader = " ";
  keymaps = [
    {
      mode = "n";
      key = "<leader>/";
      action = "<cmd>nohl<CR>";
      options = {
        desc = "Clear search";
      };
    }
  ];

  # Kanagawa (wave) matches the Japanesque terminal theme
  # https://github.com/rebelot/kanagawa.nvim
  colorschemes.kanagawa = {
    enable = true;
    settings.theme = "wave";
  };
}
