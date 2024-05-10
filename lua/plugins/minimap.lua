return {
  {
    "petertriho/nvim-scrollbar",
    event = "BufReadPost",
    config = function()
      local scrollbar = require("scrollbar")
      -- local colors = require("dracula").colors()
      scrollbar.setup({
        handle = { color = "#a80216" },
        excluded_filetypes = { "prompt", "TelescopePrompt", "noice", "notify", "nerdtree" },
        current_only = true,
        base = "buffer",
        column = 80,
        signs_on_startup = { "all" },
        -- marks = {
        --   Search = { color = colors.orange },
        --   Error = { color = colors.red },
        --   Warn = { color = colors.cyan },
        --   Info = { color = colors.green },
        --   Hint = { color = colors.yellow },
        --   Misc = { color = colors.purple },
        -- },
      })
    end,
  },

  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
      require("scrollbar.handlers.gitsigns").setup()
    end,
  },

  -- {
  --   "wfxr/minimap.vim",
  --   build = "cargo install --locked code-minimap",
  --   lazy = false,
  --   cmd = { "Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight" },
  --   init = function()
  --     vim.cmd("let g:minimap_width = 10")
  --     vim.cmd("let g:minimap_auto_start = 1")
  --     vim.cmd("let g:minimap_auto_start_win_enter = 1")
  --   end,
  -- },
}
