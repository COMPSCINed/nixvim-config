{pkgs, ...}: {
  plugins.lspsaga = {
    enable = true;
    settings = {
      symbol_in_winbar = {
        enable = true;
      };
      lightbulb = {
        enable = false;
      };
      ui = {
        border = "rounded";
        code_action = "💡";
      };
      hover = {
        open_cmd =
          if pkgs.stdenv.hostPlatform.isDarwin
          then "open"
          else "xdg-open";
        open_link = "gx";
      };
      outline = {
        auto_close = true;
        auto_preview = true;
        close_after_jump = true;
        layout = "normal"; # normal or float
        win_position = "right"; # left or right
        keys = {
          jump = "e";
          quit = "q";
          toggle_or_jump = "o";
        };
      };
      scroll_preview = {
        scroll_down = "<C-f>";
        scroll_up = "<C-b>";
      };
    };
  };
}
