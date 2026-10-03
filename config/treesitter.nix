{pkgs, ...}: {
  plugins = {
    treesitter = {
      enable = true;
      settings = {
        highlight.enable = true;
        indent.enable = true;
      };

      grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        nix
        lua
        vim
        vimdoc
        c
        cpp
        markdown
        json
        zig
        haskell
        elixir

        (pkgs.neovimUtils.grammarToPlugin pkgs.tree-sitter-grammars.tree-sitter-lean)
      ];
    };
  };
}
