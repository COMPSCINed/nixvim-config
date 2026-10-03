{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        hls = {
          enable = true;
          installGhc = false;
        };
        nil_ls = {
          enable = true;
          settings = {
            formatting = {
              command = ["alejandra"];
            };
          };
        };
        elixirls.enable = true;
        zls.enable = true;
      };
      keymaps.extra = [
        {
          mode = ["n"];
          action = "<CMD>LspRestart<Enter>";
          key = "<leader>lr";
        }
        {
          mode = ["n"];
          action = {
            __raw = "require('telescope.builtin').lsp_definitions";
          };
          key = "gd";
        }
        {
          mode = ["n"];
          action = "<CMD>Lspsaga hover_doc<Enter>";
          key = "K";
        }
        {
          mode = ["n"];
          action = "<CMD>Lspsaga code_action<CR>";
          key = "<leader>la";
          options = {
            silent = true;
            desc = "Code Action";
          };
        }
      ];
    };

    lsp-format = {
      enable = true;
    };

    lspkind = {
      enable = true;
      settings = {
        cmp = {
          enable = true;
          menu = {
            nvim_lsp = "[LSP]";
            nvim_lua = "[api]";
            path = "[path]";
            luasnip = "[snip]";
            buffer = "[buffer]";
            neorg = "[neorg]";
          };
        };
      };
    };

    trouble = {
      enable = true;
      settings = {
        multiline = true;
      };
    };
  };
}
