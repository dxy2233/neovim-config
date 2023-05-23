return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      format = {
        timeout_ms = 5000,
      },
      servers = {
        eslint = {
          settings = {
            workingDirectory = { mode = "auto" },
          },
        },
        emmet_ls = {
          filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "svelte", "pug",
            "typescriptreact", "vue" },
          init_options = {
            html = {
              options = {
                ["bem.enabled"] = true,
              },
            },
          }
        },
        volar = {}
      },
      setup = {
        eslint = function()
          vim.api.nvim_create_autocmd("BufWritePre", {
            callback = function(event)
              if require("lspconfig.util").get_active_client_by_name(event.buf, "eslint") then
                vim.cmd("EslintFixAll")
              end
            end,
          })

          require("lazyvim.util").on_attach(function(client)
            if client.name == "eslint" then
              client.server_capabilities.documentFormattingProvider = true
            elseif client.name == "tsserver" then
              client.server_capabilities.documentFormattingProvider = false
            end
          end)
        end,
        volar = function()
          require("lazyvim.util").on_attach(function(client)
            client.server_capabilities.documentFormattingProvider = false
            client.server_capabilities.documentRangeFormattingProvider = false
          end)
        end
      },
    },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "mason.nvim" },
    opts = function()
      -- local nls = require("null-ls")
      return {
        root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git"),
        sources = {
          -- nls.builtins.formatting.fish_indent,
          -- nls.builtins.diagnostics.fish,
          -- nls.builtins.formatting.eslint,
          -- nls.builtins.diagnostics.eslint,
          -- nls.builtins.formatting.stylua,
          -- nls.builtins.formatting.shfmt,
          -- nls.builtins.diagnostics.flake8,
        },
      }
    end,
  },
}
