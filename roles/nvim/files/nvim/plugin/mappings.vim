" quit when I accidently type :Q
command! Q q

" map j to gj and k to gk to browse wrapped line as normal line
nmap j gj
nmap k gk

" make Y work as C and D
nnoremap Y y$

" make K work as the reverse of J
nnoremap K i<cr><esc>

" Use Ctrl-l to clear the search highlight
nmap <C-l> :nohl<cr>

" Telescope stuff
nnoremap <leader>P <cmd>Telescope find_files<cr>
nnoremap <leader>p <cmd>Telescope git_files<cr>
nnoremap <leader>a <cmd>Telescope live_grep<cr>
nnoremap <leader>h <cmd>Telescope help_tags<cr>

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
