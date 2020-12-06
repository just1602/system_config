" quit when I accidently type :Q
command! Q q

" map j to gj and k to gk to browse wrapped line as normal line
nmap j gj
nmap k gk

" Use Ctrl-l to clear the search highlight
nmap <C-l> :nohl<cr>

" use lk as ESC to avoid reaching for ESC key
imap lk <esc>

" bind :GFiles
nnoremap <c-p> :GFiles<cr>
nnoremap <leader>p :GFiles<cr>
nnoremap <leader>P :Files<cr>

" open Copen pane
nnoremap <leader>c :copen<cr>

" some mapping to easily edit the init.vim file
nmap <leader>vi :tabe $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>

" an alias for dispath
nmap <leader>D :Dispatch 
nmap <leader>d :Dispatch<cr>

" some vim-rails aliases
nmap <leader>ec :Econtroller<space>
nmap <leader>em :Emodel<space>
nmap <leader>vc :Vcontroller<space>
nmap <leader>vm :Vmodel<space>
nmap <leader>sc :Scontroller<space>
nmap <leader>sm :Smodel<space>
nmap <leader>t :vs<cr>:A<cr>
