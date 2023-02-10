return {
    "nvim-lualine/lualine.nvim",
    init = function()
        local lualine = require "lualine"

        local function section_cat()
            return [[^.ᆽ.^= ∫]]
        end

        lualine.setup {
            options = {
                icons_enabled = true,
                theme = "poimandres",
                disabled_filetypes = { "NvimTree" },
            },
            component_separators = "",
            section_separators = "",
            sections = {
                lualine_a = {},
                lualine_b = { "branch" },
                lualine_c = { "filetype" },
                lualine_x = {},
                lualine_y = { section_cat },
                lualine_z = {},
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {},
            },
        }
    end,
}
