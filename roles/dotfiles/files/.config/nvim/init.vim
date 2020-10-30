" Check if VimPlug is present
if ! filereadable(expand('~/.local/share/nvim/site/autoload/plug.vim'))
  echo "Downloading junegunn/vim-plug to manage plugins..."
  silent !mkdir -p ~/.config/nvim/autoload/
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

filetype off

call plug#begin('~/.local/share/nvim/plugged')

Plug 'morhetz/gruvbox'

Plug 'junegunn/fzf.vim'
Plug 'RRethy/vim-illuminate'
Plug 'vim-scripts/Auto-Pairs'
Plug 'wincent/ferret'

Plug 'cakebaker/scss-syntax.vim', {'for': 'scss'}
Plug 'isRuslan/vim-es6'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-endwise'
Plug 'kana/vim-textobj-user'
Plug 'tek/vim-textobj-ruby'
Plug 'whatyouhide/vim-textobj-erb'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-git'
Plug 'kana/vim-textobj-user'
Plug 'whatyouhide/vim-textobj-erb'
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'cespare/vim-toml'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end() 

syntax on

set mouse=a
set number relativenumber
set cursorline
set autoindent
set autowrite
set inccommand=nosplit
set laststatus=2
set scrolloff=0
set splitbelow splitright
set list listchars=tab:»·,trail:·,nbsp:·
set textwidth=80
set colorcolumn=+1

set background=dark
colorscheme gruvbox


set undodir=~/.vimdid
set undofile

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

" make backspace working everywhere
set backspace=indent,eol,start

" Use the space key as our leader. Put this near the top of your vimrc
let mapleader = "\<Space>"

" quit when I accidently type :Q
command! Q q

" map j to gj and k to gk to browse wrapped line as normal line
nmap j gj
nmap k gk

" Use Ctrl-l to clear the search highlight
nmap <C-l> :nohl<cr>

" use lk as ESC to avoid reaching for ESC key
imap lk <esc>

" bind :GFiles to ctrl-p
nnoremap <c-p> :GFiles<cr>

" open Copen pane
nnoremap <leader>c :copen<cr>

" some mapping to easily edit the init.vim file
nmap <leader>vi :tabe $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>

" an alias for dispath
nmap <leader>d :Dispatch 

" some vim-rails aliases
nmap <leader>ec :Econtroller<space>
nmap <leader>em :Emodel<space>
nmap <leader>vc :Vcontroller<space>
nmap <leader>vm :Vmodel<space>
nmap <leader>sc :Scontroller<space>
nmap <leader>sm :Smodel<space>
nmap <leader>t :vs<cr>:A<cr>

autocmd FileType make setlocal noexpandtab

autocmd VimResized * :wincmd =

" latex file configuration
autocmd BufNewFile,BufRead *.tex setlocal filetype=tex spell spelllang=fr colorcolumn= textwidth=9999
let g:tex_comment_nospell=1

" markdown file configuration
autocmd FileType markdown setlocal spell spelllang=fr colorcolumn= textwidth=9999

" mail config
autocmd FileType mail setlocal spell spelllang=fr

" html file configuration
autocmd FileType html,eruby setlocal textwidth=9999

" textile file configuration
autocmd FileType text setlocal spell spelllang=fr colorcolumn= textwidth=9999

" python file configuration
autocmd FileType python setlocal tabstop=4 shiftwidth=4 autochdir

" Jenkinsfile file configuration
autocmd FileType Jenkinsfile setlocal tabstop=4 shiftwidth=4

if exists('##TextYankPost')
  autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup="Search", timeout=250}
endif

let g:coc_global_extensions=['coc-solargraph']

" statusline
set statusline=
set statusline+=%#StatusLineNC#
set statusline+=\ %M
set statusline+=\ %y
set statusline+=\ %r
set statusline+=\ %F
set statusline+=%=
set statusline+=\ %c:%l/%L
set statusline+=\ %p%%
