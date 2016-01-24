" Vundle configuration

filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

" Plugin list

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive.git'

Plugin 'scrooloose/nerdtree'

Plugin 'lervag/vim-latex'

Plugin 'vim-scripts/AutoClose' 

Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'vim-scripts/taglist.vim'

Plugin 'hail2u/vim-css3-syntax'

Plugin 'othree/html5.vim'

Plugin 'ajh17/Spacegray.vim'

Plugin 'scrooloose/syntastic'

call vundle#end()
filetype plugin indent on

" Personnal config
set omnifunc=syntaxcomplete#Complete
filetype indent on
syntax on
set mouse=a
set background=dark
set number
set autoindent
set autowrite
colorscheme spacegray

" encoding configuration
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

" no backup or swap file
set nobackup
set nowritebackup
set noswapfile
set autoread

" search configuration
set hlsearch
set incsearch
set ignorecase
set smartcase

" tab setting
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" make backspace working
set backspace=indent,eol,start

" color more than 80 char line
set textwidth=79
highlight ColorColumn ctermbg=Black
let &colorcolumn="80,".join(range(80, 380),",")

" make file don't expendtab
autocmd FileType make setlocal noexpandtab

" latex file configuration
autocmd BufNewFile,BufRead *.tex setlocal spell spelllang=fr colorcolumn= textwidth=9999
let g:tex_comment_nospell=1

" markdown file configuration
autocmd BufNewFile,BufRead *.md setlocal spell spelllang=fr colorcolumn= textwidth=9999

" html file configuration"
autocmd BufNewFile,BufRead *.html setlocal colorcolumn= textwidth=9999

" css file configuration"
autocmd BufNewFile,BufRead *.css setlocal tabstop=4 shiftwidth=4

" markown file configuration
autocmd BufNewFile,BufRead *.md setlocal filetype=markdown colorcolumn= textwidth=9999

" textile file configuration
autocmd BufNewFile,BufRead *.text setlocal spell spelllang=fr colorcolumn= textwidth=9999

" sass file
autocmd BufNewFile,BufRead *.scss setlocal filetype=sass tabstop=4 shiftwidth=4

" NerdTree
map <F2> :NERDTreeToggle<cr>

" TagList
map <F4> :TlistToggle<cr>

" cpp settings
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1

" clang-format
if has("mac")
    map <C-K> :pyf /usr/local/share/clang/clang-format.py<cr>
    imap <C-K> <c-o> :pyf /usrlocal/share/clang/clang-format.py<cr>
else
    map <C-K> :pyf /usr/share/clang/clang-format.py<cr>
    imap <C-K> <c-o> :pyf /usr/share/clang/clang-format.py<cr>
endif
