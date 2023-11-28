return {
  {
    "petertriho/nvim-scrollbar",
    event = "BufReadPost",
    config = function()
      local scrollbar = require("scrollbar")
      local colors = require("dracula").colors()
      scrollbar.setup({
        handle = { color = "#ff8c94" },
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
}
