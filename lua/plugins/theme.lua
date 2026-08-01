return {
  -- 1. Configure Tokyo Night
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "moon", -- Dark style (choose: "storm", "moon", or "night")
      light_style = "day", -- Light style (tokyonight-day)
    },
  },

  -- 2. Automatically listen to system light/dark changes
  {
    "f-person/auto-dark-mode.nvim",
    opts = {
      update_interval = 1000,
      set_dark_mode = function()
        vim.api.nvim_set_option_value("background", "dark", {})
        vim.cmd("colorscheme tokyonight-night") -- Or tokyonight-storm / tokyonight-moon
      end,
      set_light_mode = function()
        vim.api.nvim_set_option_value("background", "light", {})
        vim.cmd("colorscheme tokyonight-day")
      end,
    },
  },

  -- 3. Instruct LazyVim to use tokyonight as default
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
