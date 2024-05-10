return {
  {
    "Mofiqul/dracula.nvim",
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
      -- colorscheme = "gruvbox",
      -- colorscheme = "tokyonight",
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function()
      return {
        options = {
          theme = "dracula",
          -- theme = "tokyonight",
        },
      }
    end,
  },
  {
    "echasnovski/mini.indentscope",
    opts = {
      options = { try_as_border = true },
    },
  },

  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = true,
  --   opts = {
  --     -- style = "moon",
  --     -- transparent = true,
  --     -- styles = {
  --     --   sidebars = "transparent",
  --     --   floats = "transparent",
  --     -- },
  --   },
  -- },
}
