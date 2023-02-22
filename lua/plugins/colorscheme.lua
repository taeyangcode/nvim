local colorscheme_configs = {
    poimandres = {
        url = "olivercederborg/poimandres.nvim",
        config = function()
            vim.g.background = "light"
            require "poimandres".setup {}
            vim.cmd("colorscheme poimandres")
        end,
    },
    aylin = {
        url = "AhmedAbdulrahman/vim-aylin",
        config = function()
            vim.g.background = "dark"
            require "vim-aylin".setup {}
            vim.cmd("colorscheme aylin")
        end,
    }
}

local function lazy_config(colorscheme_name)
    local config_info = colorscheme_configs[colorscheme_name]
    return {
        config_info.url,
        lazy = false,
        priority = 1000,
        config = config_info.config,
    }
end

return lazy_config("poimandres")
