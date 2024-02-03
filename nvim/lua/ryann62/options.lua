-- Expand tabs (spaces instead of \t)
vim.o.expandtab = true

-- Tabstop (Determine the number of spaces a tab character occupies)
vim.o.tabstop = 4

-- Shiftwidth (Specify the number of spaces for shifting '<<', '>>')
vim.o.shiftwidth = 4

-- Enable line numbers
vim.o.number = true

-- Enable relative line numbers
vim.o.relativenumber = true

-- Smartindent
vim.o.smartindent = true

-- Scrolloff (Number of lines to show above and below cursor)
vim.opt.scrolloff = 8

-- Enable signcolumn
vim.opt.signcolumn = "yes"

-- Enable incremental search
vim.opt.incsearch = true

-- Enable better colours
vim.opt.termguicolors = true

-- Append the ocp-indent path to the runtime path (ocaml for some reason)
vim.opt.runtimepath:prepend("/home/ryann62/.opam/default/share/ocp-indent/vim")

-- Integrate system clipboard to neovim
vim.opt.clipboard:append('unnamedplus')
