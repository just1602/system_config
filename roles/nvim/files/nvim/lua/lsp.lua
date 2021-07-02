require'lspconfig'.solargraph.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.cssls.setup{
    cmd = { 'css-languageserver', '--stdio' },
    on_attach=require'completion'.on_attach
}
require'lspconfig'.gopls.setup{on_attach=require'completion'.on_attach}
