require('mason').setup()
require('mason-lspconfig').setup()

local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.setup()

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp_attach = function(client, bufnr)
end

local lspconfig = require('lspconfig')
require('mason-lspconfig').setup_handlers({
    function(server_name)
        lspconfig[server_name].setup({
            on_attach = lsp_attach,
            capabilities = lsp_capabilities,
        })
    end,
})

-- clang
require'lspconfig'.clangd.setup{}

-- html & json
require'lspconfig'.html.setup{} -- npm i -g vscode-langservers-extracted
require'lspconfig'.jsonls.setup{}

-- rust
require'lspconfig'.rust_analyzer.setup {
    -- cmd = {
    --     "rustup", "run", "stable", "rust-analyzer"
    -- }
}

-- typescript
require'lspconfig'.tsserver.setup{} -- npm i -g typescript typescript-language-server

-- lua (for nvim)
require('lspconfig').sumneko_lua.setup {
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file('', true),
        checkThirdParty = false, -- THIS IS THE IMPORTANT LINE TO ADD
      },
      telemetry = {
        enable = false,
      },
    },
  },
}

-- markdown
require'lspconfig'.prosemd_lsp.setup{}
