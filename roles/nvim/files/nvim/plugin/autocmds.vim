" TODO: migrate those to lua
autocmd VimResized * :wincmd =

autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup="Search", timeout=250}

autocmd FileType java lua require('jdtls').start_or_attach({cmd = {'nvim-java-lsp.sh'}, root_dir = require('jdtls.setup').find_root({'.git'})})
