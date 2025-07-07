-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- up/down remap
vim.keymap.set("n", "j", "<Up>")
vim.keymap.set("n", "k", "<Down>")
vim.keymap.set("x", "j", "<Up>")
vim.keymap.set("x", "k", "<Down>")

-- make visual lines movable
vim.keymap.set("v", "J", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>+1<CR>gv=gv")

-- "J" appends the line below to the current line with a space
-- this remap makes the cursor stay in place
vim.keymap.set("n", "J", "mzJ`z")

-- make search terms stay in the middle of the screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- make the replaced word go into the void buffer when pasting
vim.keymap.set("x", "<leader>p", '"_dP')

-- yank into the system clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- delete to void
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')

-- open CodeCompanionChat
vim.keymap.set("n", "<leader>cL", ":CodeCompanionChat<CR>")
