local lsp_languages = { "clangd", "cssls", "cssmodules_ls", "dockerls", "html", "jsonls", "jdtls", "tsserver", "ltex", "lua_ls", "marksman", "rust_analyzer", "sqlls", "svelte", "tailwindcss", "texlab", "vimls", "vuels", "yamlls" }

return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },
    init = function()
        require "mason".setup {}

        local mason_lspconfig = require "mason-lspconfig"
        mason_lspconfig.setup {
            ensure_installed = lsp_languages,
            automatic_installation = true,
        }

        local lspconfig = require "lspconfig"
        for _, server in pairs(lsp_languages) do
            lspconfig[server].setup {}
        end

        lspconfig.lua_ls.setup {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                    },
                },
            },
        }
    end
}
