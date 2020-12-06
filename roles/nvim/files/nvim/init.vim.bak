" colorscheme
packadd gruvbox

" general utilities
packadd fzf.vim
packadd vim-illuminate
packadd Auto-Pairs
packadd ferret
packadd coc.nvim

" languages specific plugin
packadd scss-syntax.vim
packadd vim-es6
packadd vim-ruby
packadd vim-endwise
packadd vim-textobj-user
packadd vim-textobj-ruby
packadd vim-textobj-erb
packadd vim-rake
packadd vim-bundler
packadd vim-rails
packadd vim-dispatch
packadd vim-fugitive
packadd vim-surround
packadd vim-repeat
packadd vim-commentary
packadd vim-git
packadd Jenkinsfile-vim-syntax
packadd vim-toml


" Use the space key as our leader. Put this near the top of your vimrc
let mapleader = "\<Space>"

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

autocmd VimResized * :wincmd =

autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup="Search", timeout=250}

let g:coc_global_extensions=['coc-solargraph']
