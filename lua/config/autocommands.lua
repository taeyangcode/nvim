local autocommand = vim.api.nvim_create_autocmd

local language_pattern = { "cpp", "c", "rust", "typescript", "typescriptreact", "javascript", "javascriptreact", "lua" }
local text_pattern = { "html", "css", "scss", "markdown", "text", "tex", "latex" }

autocommand("Filetype", {
    pattern = language_pattern,
    callback = function()
        vim.bo.expandtab = true
        vim.bo.tabstop = 8
        vim.bo.softtabstop = 0
        vim.bo.shiftwidth = 4
        vim.bo.autoindent = true
    end
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

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function(args)
        require("conform").format({ bufnr = args.buf })
    end,
})
