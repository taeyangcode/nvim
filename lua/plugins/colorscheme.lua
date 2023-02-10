return {
    "olivercederborg/poimandres.nvim", -- https://github.com/olivercederborg/poimandres.nvim
    lazy = false, -- Do not lazy load
    priority = 1000,
    config = function()
        vim.cmd([[colorscheme poimandres]])
    end,
}
