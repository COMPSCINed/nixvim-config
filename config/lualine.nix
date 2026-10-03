{
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        global_status = true;

        section_separators = {
          left = "";
          right = "";
        };
        component_separators = "";
      };
      inactive_sections = {
        lualine_x = [
          "filename"
        ];
      };
      sections = {
        lualine_a = [
          {
            __unkeyed = "mode";
            fmt = "string.lower";
            color = {
              fg = "#DCD7BA";
              bg = "nil";
            };
            separator.left = "";
            separator.right = "";
          }
          {
            __unkeyed = "branch";
            icon.__unkeyed = "";
            separator.left = "";
            separator.right = "";
            color = {
              fg = "#DCD7BA";
              bg = "nil";
            };
          }
        ];
        lualine_b = [
          {
            __unkeyed = "diff";
            separator.left = "";
            separator.right = "";
          }
        ];
        lualine_c = [""];
        lualine_x = [""];
        lualine_y = [""];
        lualine_z = [
          {
            __unkeyed = {
              __raw = ''
                function()
                  local chars = setmetatable({
                    " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ",
                    " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ",
                  }, { __index = function() return " " end })
                  local line_ratio = vim.api.nvim_win_get_cursor(0)[1] / vim.api.nvim_buf_line_count(0)
                  local position = math.floor(line_ratio * 100)

                  local icon = chars[math.floor(line_ratio * #chars)] .. position
                  if position <= 5 then
                    icon = " TOP"
                  elseif position >= 95 then
                    icon = " BOT"
                  end
                  return icon
                end
              '';
            };
            color = {
              fg = "#DCD7BA";
              bg = "nil";
            };
            padding = 0;
            separator.left = "";
            separator.right = "";
          }
        ];
      };
    };
  };
}
