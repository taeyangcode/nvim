local autocommand = vim.api.nvim_create_autocmd

local language_pattern = { "cpp", "c", "rust", "typescript", "typescriptreact", "javascript", "javascriptreact", "lua" }
local text_pattern = { "html", "css", "scss", "markdown", "text" }

autocommand("Filetype", {
    pattern = language_pattern,
    callback = function()
        vim.bo.expandtab = true
        vim.bo.tabstop = 8
        vim.bo.softtabstop = 0
        vim.bo.shiftwidth = 4
        vim.bo.autoindent = true
    end,
    desc = [[
        Indentation configuration

        Enabled filetypes: 
            cpp, hpp, c, h, rs, ts, tsx, js, jsx, lua
        Indentation details:
            Tabs that consist of four columns/spaces
            Autoindent
    ]],
})

autocommand("Filetype", {
    pattern = text_pattern,
    callback = function()
        vim.bo.expandtab = false
        vim.bo.tabstop = 4
        vim.bo.softtabstop = 0
        vim.bo.shiftwidth = 4
        vim.bo.autoindent = true
        vim.opt.spell = true
    end,
    desc = [[
        Indentation configuration

        Enabled filetypes:
            html, css, scss, md, txt
        Indentation details:
            Pure Tabs
            Autoindent
    ]],
})

-- Helper function to open NvimTree upon startup
local function open_nvim_tree(data)
    -- buffer is a real file on the disk
    local real_file = vim.fn.filereadable(data.file) == 1

    -- buffer is a [No Name]
    local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

    if not real_file and not no_name then
      return
    end

    -- open the tree, find the file but don't focus it
    require("nvim-tree.api").tree.toggle({ focus = false, find_file = true, })
end

autocommand("VimEnter", {
    callback = open_nvim_tree,
})
