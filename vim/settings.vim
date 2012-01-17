"------------------------------------------------------------------
" @file 	settings.vim
" @description	my vim global settings
" @author	Justin Lavoie <jlavoie1602@gmail.com>
" vim:	ts=4 sts=4 sw=4
" -----------------------------------------------------------------

set nocompatible
set ruler
set ai

" Syntax highlithing activation {{{
syntax on
"}}}

" 356 colors support for terminal mode {{{
set t_Co=256
"}}}

"{{{ local: en_CA
setlocal spelllang=en_ca
"}}}

"{{{  if filetype = gitcommir spellcheck on or filetype = tex
autocmd FileType gitcommit set spell
autocmd FileType tex set spell
"}}}

" Activate filetype plugins {{{
filetype on
filetype plugin on
filetype plugin indent on
"}}}

" colorscheme configuration {{{
colorscheme desert256
"set background=dark
"}}}

"" file type indentation {{{
filetype indent on

"{{{ Keybinds
nmap <F4> :TlistToggle<cr>

"" map arrow to null and force myself to use hjkl
noremap <Up> ""
noremap <Down> ""
noremap <Left> ""
noremap <Right> ""

"" Use Ctrl + h/j/k/l to browse splited window
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

"}}}

"{{{
"" Enable syntastic syntax checking
let g:syntastic_enable_signs = 1
let g:syntastic_quiet_warnings = 1

"}}}
"{{{
"" Gist config
" detect filetype
let g:gist_detect_filetype = 1

" open browser after the post
let g:gist_browser_command = 'chromium %URL% &'

" show private gist
let g:gist_show_privates = 1

" github token
let g:github_token = $GITHUB_TOKEN
"}}}
"{{{ Automatic shebang
autocmd BufNewFile *.py 0put =\"#!/usr/bin/env python\<nl># -*- coding: utf-8 -*-\<nl>\"|$
autocmd BufNewFile *.rb 0put =\"#/usr/bin/env ruby\<nl># -*- coding: utf-8 -*-\<nl>\"|$
autocmd BufNewFile *.pl 0put=\"#/usr/bin/env perl\<nl>\"|$
"}}}

"" some vim options {{{
set showcmd
set showmode
set ignorecase "ignore case when searching
set incsearch "Start to search as soon as we type
set mouse=a
set number
set ts=4
set sw=4
set sts=4
set scrolloff=4
set laststatus=2
set title
set showmatch
set autoindent
set smartindent
set cindent
set showtabline=0
set hlsearch
set vb t_vb =
set noswapfile
"}}}

"" File encoding configuration {{{
set encoding=utf-8
set fileencoding=utf-8
"}}}

"" Do **NOT** color php special fonction for color scheme compatibility {{{
let php_special_functions = 0
"}}}
set laststatus=2 " Enables the status line at the bottom of Vim
set statusline=%{GitBranch()}


