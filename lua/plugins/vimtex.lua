return {
    "lervag/vimtex",
    lazy = false,
    config = function ()
        vim.cmd("call vimtex#init()")

        -- vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"

        vim.cmd([[
            let g:vimtex_view_method = "zathura"
            let g:Tex_IgnoredWarnings = 
                \'Underfull'."\n".
                \'Overfull'."\n".
                \'specifier changed to'."\n".
                \'You have requested'."\n".
                \'Missing number, treated as zero.'."\n".
                \'There were undefined references'."\n".
                \'Citation %.%# undefined'."\n".
                \'Double space found.'."\n"
            let g:Tex_IgnoreLevel = 10000
        ]])
    end,
}
