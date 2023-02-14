local treesitter_lanugages = { "c", "cmake", "cpp", "css", "dockerfile", "git_rebase", "gitattributes", "gitcommit", "html", "java", "javascript", "jsdoc", "json", "json5", "latex", "llvm", "lua", "make", "markdown", "markdown_inline", "rust", "scss", "svelte", "typescript", "vim", "vue", "yaml" }

return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    init = function()
        require "nvim-treesitter.configs".setup {
            ensure_installed = treesitter_lanugages,
            highlight = {
                enable = true,
                -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
                -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
                -- Using this option may slow down your editor, and you may see some duplicate highlights.
                -- Instead of true it can also be a list of languages
                additional_vim_regex_highlighting = false,
          },
        }
    end
}
