require('mason').setup()
require('mason-lspconfig').setup()

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
