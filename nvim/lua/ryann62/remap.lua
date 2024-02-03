-- Set global variable 'mapleader'
vim.g.mapleader = " "


-- Normal mode ("n") keymaps
vim.keymap.set("n", "<leader> ", [[:b#<CR>]]) -- opens last opened buffer


-- Netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
