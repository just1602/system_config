" Vundle configuration

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Bundle list


Bundle "gmarik/Vundle.vim"

Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Bundle 'git://github.com/tpope/vim-fugitive.git'

Bundle 'scrooloose/nerdtree'

Bundle 'klen/python-mode'

Bundle 'vim-scripts/LaTeX-Suite-aka-Vim-LaTeX'

Bundle 'vim-scripts/AutoClose' 

Bundle 'vim-scripts/c.vim'

Bundle 'vim-scripts/Django-Projects'

Bundle 'vim-scripts/pythoncomplete'

Bundle 'vim-scripts/vim-django-support'

Bundle 'vim-scripts/taglist.vim'

Bundle 'vim-scripts/HTML5-Syntax-File'

Bundle 'vim-scripts/html5.vim'

Bundle 'vim-scripts/css3-syntax-plus'

Bundle 'vim-scripts/Sass'

Bundle 'vim-scripts/jellybeans.vim'

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
colorscheme jellybeans 

" encoding configuration
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
set term=xterm

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

" enable 256 colors
set t_Co=256

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

" html file configuration"
autocmd BufNewFile,BufRead *.html setlocal colorcolumn= textwidth=9999

" css file configuration"
autocmd BufNewFile,BufRead *.css setlocal tabstop=4 shiftwidth=4

" markown file configuration
autocmd BufNewFile,BufRead *.md setlocal filetype=markdown colorcolumn= textwidth=9999

" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

" NerdTree
map <F2> :NERDTreeToggle<cr>

" TagList
map <F4> :TlistToggle<cr>

" Python-mode
" Activate rope
" Keys:
" K             Show python docs
"   Rope autocomplete
" g     Rope goto definition
" d     Rope show documentation
" f     Rope find occurrences
" b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator
" modes)
" ]]            Jump on next class or function (normal, visual, operator
" modes)
" [M            Jump on previous class or method (normal, visual, operator
" modes)
" ]M            Jump on next class or method (normal, visual, operator
" modes)
let g:pymode_rope = 1
"
" " Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
"
" "Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = 'b'
"
" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

" Syntax highlithing
" Enable pymode's custom syntax highlighting
let g:pymode_syntax = 1

" Enable all python highlightings
let g:pymode_syntax_all = 1

" Highlight "print" as a function
let g:pymode_syntax_print_as_function = 0

" Highlight indentation errors
let g:pymode_syntax_indent_errors = g:pymode_syntax_all

" Highlight trailing spaces
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Highlight string formatting
let g:pymode_syntax_string_formatting = g:pymode_syntax_all

" Highlight str.format syntax
let g:pymode_syntax_string_format = g:pymode_syntax_all

" Highlight string.Template syntax
let g:pymode_syntax_string_templates = g:pymode_syntax_all

" Highlight doc-tests
let g:pymode_syntax_doctests = g:pymode_syntax_all

" Highlight builtin objects (__doc__, self, etc)
let g:pymode_syntax_builtin_objs = g:pymode_syntax_all

" Highlight builtin functions
let g:pymode_syntax_builtin_funcs = g:pymode_syntax_all

" Highlight exceptions
let g:pymode_syntax_highlight_exceptions = g:pymode_syntax_all

" Highlight equal operator
let g:pymode_syntax_highlight_equal_operator = g:pymode_syntax_all

" Highlight stars operator
let g:pymode_syntax_highlight_stars_operator = g:pymode_syntax_all

" Highlight `self`
let g:pymode_syntax_highlight_self = g:pymode_syntax_all

" For fast machines
let g:pymode_syntax_slow_sync = 0

" Python syntax support for pyflakes
let g:syntastic_python_python_exe = 'python3'
let g:syntastic_python_checker = ['python', 'py3kwarn']
