return {
    "lervag/vimtex",
    lazy = false,
    config = function ()
        vim.cmd("call vimtex#init()")

        if vim.fn.has("macunix") then
            vim.g.vimtex_view_general_viewer = "zathura"
        else
            vim.g.vimtex_view_general_viewer = "SumatraPDF"
        end

        vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"

        vim.cmd([[
            let g:Tex_IgnoredWarnings = 
                \'Underfull'."\n".
                \'Overfull'."\n".
                \'specifier changed to'."\n".
                \'You have requested'."\n".
                \'Missing number, treated as zero.'."\n".
                \'There were undefined references'."\n".
                \'Citation %.%# undefined'."\n".
                \'Double space found.'."\n"
            let g:Tex_IgnoreLevel = 8
        ]])
    end,
}
