"------------------------------------------------------------------
" @file 	settings.vim
" @description	my vim global settings
" @author	Justin Lavoie <jlavoie1602@gmail.com>
" vim:	ts=4 sts=4 sw=4
" -----------------------------------------------------------------

" Syntax highlithing activation {{{
syntax on
"}}}

" 356 colors support for terminal mode {{{
set t_Co=256
"}}}

" Activate filetype plugins {{{
filetype on
filetype plugin indent on
"}}}

" colorscheme configuration {{{
colorscheme zenburn 
set background=light
"}}}

"" file type indentation {{{
filetype indent on
""}}}

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
"}}}

"" File encoding configuration {{{
set encoding=utf-8
set fileencoding=utf-8
"}}}

"" Do **NOT** color php special fonction for color scheme compatibility {{{
let php_special_functions = 0
"}}}


