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

-- telescope keymaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- clipboard yank osx
vim.cmd[[
    vnoremap \y y:call system("pbcopy", getreg("\""))<CR>
    nnoremap \p :call setreg("\"", system("pbpaste"))<CR>p
    
    noremap YY "+y<CR>
    noremap P "+gP<CR>
    noremap XX "+x<CR>
]]
