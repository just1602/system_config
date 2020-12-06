" TODO: migrate those to lua
autocmd VimResized * :wincmd =

autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup="Search", timeout=250}
