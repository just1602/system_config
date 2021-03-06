-- TODO: Add on_attach mappings for lsp

require'lspconfig'.solargraph.setup {}
require'lspconfig'.cssls.setup {
  cmd = { 'css-languageserver', '--stdio' }
}
require'lspconfig'.gopls.setup {}

require'lspconfig'.sumneko_lua.setup {
  cmd = {'/usr/bin/lua-language-server'},
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = vim.split(package.path, ';'),
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
