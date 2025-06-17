return {
  "Pocco81/auto-save.nvim",
  event = { "InsertLeave", "TextChanged" },
  config = function()
    require("auto-save").setup({
      enabled = true,
      execution_message = {
        message = function()
          return ("Saved at " .. vim.fn.strftime("%H:%M:%S"))
        end,
        dim = 0.18,
        cleaning_interval = 1250,
      },
    })
  end,
}
