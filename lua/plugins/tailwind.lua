return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tailwindcss = {
          settings = {
            tailwindCSS = {
              experimental = {
                classRegex = {
                  "tw`([^`]*)",
                  "classnames\\(([^)]*)\\)",
                  "clsx\\(([^)]*)\\)",
                },
              },
            },
          },
        },
      },
    },
  },

  {
    "onsails/lspkind.nvim",
    lazy = true,
  },

  {
    "roobert/tailwindcss-colorizer-cmp.nvim",
    dependencies = {
      "nvim-cmp",
    },
    config = function()
      require("tailwindcss-colorizer-cmp").setup({
        color_square_width = 2,
      })

      local cmp = require("cmp")
      local lspkind = require("lspkind")

      cmp.setup({
        formatting = {
          format = function(entry, vim_item)
            -- nejprve použij tailwind format
            local tailwind_ok, tw = pcall(require, "tailwindcss-colorizer-cmp")
            if tailwind_ok then
              vim_item = tw.formatter()(entry, vim_item)
            end
            -- pak přidej lspkind ikony
            return lspkind.cmp_format({ mode = "symbol_text" })(entry, vim_item)
          end,
        },
      })
    end,
  },
}
