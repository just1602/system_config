" Vundle configuration

set nocompatible
filetype off

call vundle#rc()

" Bundle list

filetype plugin indent on

Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Bundle 'git://github.com/tpope/vim-fugitive.git'

Bundle 'scrooloose/nerdtree'

Bundle 'klen/python-mode'

Bundle 'vim-scripts/LaTeX-Suite-aka-Vim-LaTeX'

Bundle 'vim-scripts/AutoClose' 

Bundle 'vim-scripts/c.vim'

" Personnal config
filetype indent on
syntax on
set mouse=a
set background=light
set number
set autoindent
set autowrite

" enable 256 colors
set t_Co=256

" tab setting
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" make backspace working
set backspace=indent,eol,start


" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

" NerdTree
map <F2> :NERDTreeToggle<cr>

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
