" Vundle configuration

filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

" Plugin list

Plugin 'gmarik/Vundle.vim'

Plugin 'lervag/vimtex'

Plugin 'anyakichi/Vim-Autoclose'

Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'hail2u/vim-css3-syntax'

Plugin 'othree/html5.vim'

Plugin 'scrooloose/syntastic'

Plugin 'rust-lang/rust.vim'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'tpope/vim-surround'

Plugin 'ledger/vim-ledger'

Plugin 'rhysd/vim-clang-format'

Plugin 'mhinz/vim-janah'

call vundle#end()
filetype plugin indent on

" Personnal config
set omnifunc=syntaxcomplete#Complete
filetype indent on
syntax on
set mouse=a
set background=dark
set number
set relativenumber
set autoindent
set autowrite
colorscheme janah

" allow recursive search
set path+=**

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

" ledger file
autocmd BufNewFile,BufRead *.ledger setlocal filetype=ledger tabstop=4 shiftwidth=4

" Airline config
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = "zenburn"

" netrw config
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_liststyle = 3
let g:netrw_list_hide = netrw_gitignore#Hide()
let g:netrw_list_hide .= ',\(^\|\s\s\)\zs\.\S\+'

" cpp settings
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1

" rust stuff
let g:rustfmt_autosave = 1

" ledger-cli
let g:ledger_maxwidth = 80
let g:ledger_fillstring = '    -'
let g:ledger_fold_blanks = 0
