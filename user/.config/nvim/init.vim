" Vundle configuration

filetype off

call plug#begin('~/.local/share/nvim/plugged')

" Plug list

Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}

Plug 'machakann/vim-highlightedyank'

Plug 'vim-scripts/Auto-Pairs'

Plug 'cakebaker/scss-syntax.vim', {'for': 'scss'}

Plug 'isRuslan/vim-es6'

Plug 'tpope/vim-rails'

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-endwise'

Plug 'tpope/vim-dispatch'

Plug 'lervag/vimtex', {'for': 'tex'}

Plug 'vim-airline/vim-airline'

Plug 'dracula/vim'

call plug#end()
filetype plugin indent on

" Personnal config
filetype indent on
syntax on
set mouse=a
set background=dark
set number
set relativenumber
set autoindent
set autowrite
set autochdir
set inccommand=nosplit
set laststatus=2
set scrolloff=1
colorscheme dracula

" allow recursive search
set path+=**
set wildmenu

" Ignore in recursive search
set wildignore+=**/node_modules/**
set wildignore+=**/logs/**
set wildignore+=**/log/**
set wildignore+=**/cov/**
set wildignore+=**/coverage/**
set wildignore+=**/vendor/**
set wildignore+=**/bower_components/**
set wildignore+=**/__pycache__/**

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
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab

" jump into code implementation
nnoremap <c-s> <c-]>

" make backspace working
set backspace=indent,eol,start

" color more than 80 char line
set textwidth=79

" make file don't expendtab
autocmd FileType make setlocal noexpandtab

" latex file configuration
autocmd BufNewFile,BufRead *.tex setlocal filetype=tex spell spelllang=fr colorcolumn= textwidth=9999
let g:tex_comment_nospell=1

" markdown file configuration
autocmd FileType markdown setlocal spell spelllang=fr textwidth=9999

" html file configuration"
autocmd FileType html,eruby setlocal textwidth=9999

" textile file configuration
autocmd FileType text setlocal spell spelllang=fr colorcolumn= textwidth=9999

" python 4 space tabs
autocmd FileType python setlocal tabstop=4 shiftwidth=4

" ledger file
autocmd BufNewFile,BufRead *.ledger setlocal filetype=ledger

" cpp settings
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1

" rust stuff
let g:rustfmt_autosave = 1

" ledger-cli
let g:ledger_maxwidth = 80
let g:ledger_fillstring = '    -'
let g:ledger_fold_blanks = 0

" vimtex config
let g:vimtex_compiler_progname = 'nvr'

" airline
let g:airline_powerline_fonts = 1

" use Ctrl+n to toggle NerdTree
map <C-n> :NERDTreeToggle<CR>
