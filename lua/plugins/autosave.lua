-- Autosave při ztrátě fokusu okna nebo po pauze 1000ms (1s)
vim.api.nvim_create_autocmd({ "FocusLost", "BufLeave", "InsertLeave" }, {
  pattern = "*",
  callback = function()
    if vim.bo.modified then
      vim.cmd("silent! write")
    end
  end,
})

-- Volitelně můžeš přidat i ukládání po nečinnosti
vim.api.nvim_create_autocmd("CursorHoldI", {
  pattern = "*",
  callback = function()
    if vim.bo.modified then
      vim.cmd("silent! write")
    end
  end,
})
