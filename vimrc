" Vundle configuration

filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

" Plugin list

Plugin 'gmarik/Vundle.vim'

Plugin 'machakann/vim-highlightedyank'

Plugin 'vim-scripts/Auto-Pairs'

Plugin 'cakebaker/scss-syntax.vim'

Plugin 'tpope/vim-rails'

Plugin 'posva/vim-vue'

Plugin 'lervag/vimtex'

Plugin 'vim-airline/vim-airline'

Plugin 'tpope/vim-fugitive'

Plugin 'ledger/vim-ledger'

Plugin 'rhysd/vim-clang-format'

Plugin 'mhinz/vim-janah'

call vundle#end()
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
set inccommand=nosplit
set laststatus=2
colorscheme janah

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

" jump into code implementation
nnoremap <c-s> <c-]>

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

" ledger file
autocmd BufNewFile,BufRead *.ledger setlocal filetype=ledger tabstop=4 shiftwidth=4

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
