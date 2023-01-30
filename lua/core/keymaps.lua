-- leader
vim.g.mapleader = ' '

-- indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- line number
vim.wo.relativenumber = true
vim.go.scrolloff = 8

-- colorscheme
-- vim.go.termguicolors = true
vim.go.background = "dark"
vim.cmd[[colorscheme iceberg]]

-- encoding
vim.cmd('filetype plugin indent on')

-- clipboard
vim.cmd('set clipboard+=unnamedplus')
