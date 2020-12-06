" Check if VimPlug is present
if ! filereadable(expand('~/.local/share/nvim/site/autoload/plug.vim'))
  echo "Downloading junegunn/vim-plug to manage plugins..."
  silent !mkdir -p ~/.config/nvim/autoload/
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

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
