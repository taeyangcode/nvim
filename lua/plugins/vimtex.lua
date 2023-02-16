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
    end,
}
