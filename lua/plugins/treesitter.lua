local treesitter_lanugages = { "c", "cmake", "cpp", "css", "dockerfile", "git_rebase", "gitattributes", "gitcommit", "html", "java", "javascript", "jsdoc", "json", "json5", "latex", "llvm", "lua", "make", "markdown", "markdown_inline", "rust", "scss", "svelte", "typescript", "vim", "vue", "yaml" }

return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    init = function()
        local treesitter = require "nvim-treesitter"
        treesitter.setup {
            ensure_installed = treesitter_languages,
            sync_install = false,
            auto_install = true,
            theme = "Poimandres",

            highlight = {
                enable = true,
            },
        }
    end
}
