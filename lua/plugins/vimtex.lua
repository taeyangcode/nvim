return {
    "lervag/vimtex",
    lazy = false,
    config = function ()
        vim.cmd("call vimtex#init()")
        vim.g.vimtex_view_general_viewer = "zathura"
        vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"
    end,
}
