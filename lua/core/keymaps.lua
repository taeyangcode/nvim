-- leader
vim.g.mapleader = ' '

-- indentation
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- line number
vim.wo.relativenumber = true
vim.go.scrolloff = 8

-- colorscheme
-- vim.go.termguicolors = true
vim.go.background = "dark"
vim.cmd[[colorscheme iceberg]]

-- telescope keymaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
