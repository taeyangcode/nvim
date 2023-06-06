return {
    "lervag/vimtex",
    lazy = false,
    config = function ()
        vim.cmd("call vimtex#init()")

        -- vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"

        vim.cmd([[
            let g:vimtex_view_method = "zathura"
            let g:vimtex_quickfix_ignore_all_warnings = 0
            let g:vimtex_quickfix_ignore_filters = [
                  \ 'Underfull',
                  \ 'Overfull',
                  \]
            let g:Tex_IgnoreLevel = 10000
        ]])
    end,
}
