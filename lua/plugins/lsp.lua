local lsp_languages = { "clangd", "cssls", "cssmodules_ls", "dockerls", "html", "jsonls", "jdtls", "tsserver", "ltex", "sumneko_lua", "marksman", "rust_analyzer", "sqlls", "svelte", "tailwindcss", "vimls", "vuels", "yamlls" }

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

        require "lspconfig".clangd.setup {}
        require "lspconfig".cssls.setup {}
        require "lspconfig".cssmodules_ls.setup {}
        require "lspconfig".dockerls.setup {}
        require "lspconfig".html.setup {}
        require "lspconfig".jsonls.setup {}
        require "lspconfig".jdtls.setup {}
        require "lspconfig".tsserver.setup {}
        require "lspconfig".ltex.setup {}
        require "lspconfig".sumneko_lua.setup {}
        require "lspconfig".marksman.setup {}
        require "lspconfig".rust_analyzer.setup {}
        require "lspconfig".sqlls.setup {}
        require "lspconfig".svelte.setup {}
        require "lspconfig".tailwindcss.setup {}
        require "lspconfig".vimls.setup {}
        require "lspconfig".vuels.setup {}
        require "lspconfig".yamlls.setup {}
    end
}
