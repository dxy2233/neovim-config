return {
  {
    "Mofiqul/dracula.nvim",
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function()
      return {
        options = {
          theme = "dracula-nvim",
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
}
