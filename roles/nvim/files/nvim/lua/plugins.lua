vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

  use {'wbthomason/packer.nvim', opt = true}

  use {'Th3Whit3Wolf/onebuddy', requires = {'tjdevries/colorbuddy.nvim'}}

  use {'cohama/lexima.vim'}
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  use {'nvim-lua/completion-nvim'}
  use {'neovim/nvim-lspconfig'}
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use {'tpope/vim-dispatch', cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

  use {'tpope/vim-git'}
  use {'tpope/vim-commentary'}
  use {'tpope/vim-repeat'}
  use {'tpope/vim-surround'}
  use {'tpope/vim-rails'}
  use {'tpope/vim-bundler'}
  use {'tpope/vim-rake'}
  use {'vim-ruby/vim-ruby', ft = 'ruby'}
  use {'whatyouhide/vim-textobj-erb', requires = {'kana/vim-textobj-user'}}
  use {'rhysd/vim-textobj-ruby', requires = {'kana/vim-textobj-user'}}

end)
