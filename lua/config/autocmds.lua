-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd("FileType", {
  pattern = "fortran",
  callback = function()
    vim.bo.shiftwidth = 3 -- change to your preferred number of spaces
    vim.bo.tabstop = 3 -- change to your preferred number of spaces
  end,
})
