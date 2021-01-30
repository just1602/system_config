-- colorscheme
vim.cmd [[packadd gruvbox]]

-- general utilities
vim.cmd [[packadd vim-illuminate]]
vim.cmd [[packadd Auto-Pairs]]
vim.cmd [[packadd nvim-treesitter]]
vim.cmd [[packadd nvim-lspconfig]]
vim.cmd [[packadd completion-nvim]]
vim.cmd [[packadd popup.nvim]]
vim.cmd [[packadd plenary.nvim]]
vim.cmd [[packadd telescope.nvim]]

-- languages specific plugin
vim.cmd [[packadd scss-syntax.vim]]
vim.cmd [[packadd vim-es6]]
vim.cmd [[packadd vim-ruby]]
vim.cmd [[packadd vim-endwise]]
vim.cmd [[packadd vim-textobj-user]]
vim.cmd [[packadd vim-textobj-ruby]]
vim.cmd [[packadd vim-textobj-erb]]
vim.cmd [[packadd vim-rake]]
vim.cmd [[packadd vim-bundler]]
vim.cmd [[packadd vim-rails]]
vim.cmd [[packadd vim-dispatch]]
vim.cmd [[packadd vim-fugitive]]
vim.cmd [[packadd vim-surround]]
vim.cmd [[packadd vim-repeat]]
vim.cmd [[packadd vim-commentary]]
vim.cmd [[packadd vim-git]]
vim.cmd [[packadd Jenkinsfile-vim-syntax]]
vim.cmd [[packadd vim-toml]]

vim.api.nvim_command('colorscheme gruvbox')

vim.g.mapleader = ' '

-- window related config
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.cursorline = true
vim.wo.colorcolumn = '+1'

-- buffer options
vim.bo.tabstop = 2
vim.bo.shiftwidth = 2
vim.bo.softtabstop = 2
vim.bo.formatoptions = "qrnc1j"
vim.bo.omnifunc = 'v:lua.vim.lsp.omnifunc'

-- general options
vim.o.mouse = vim.o.mouse .. 'a'
vim.o.autoindent = true
vim.o.autowrite = true
vim.o.inccommand = 'nosplit'
vim.o.laststatus = 2
vim.o.scrolloff = 0
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.list = true
vim.o.listchars = 'tab:»·,trail:·,nbsp:·'
vim.o.textwidth = 80
vim.o.undodir = os.getenv('HOME') .. '/.vimdid'
vim.o.undofile = true
vim.o.path = vim.o.path .. ',**'
vim.o.wildmenu = true
vim.o.wildmode = 'full'
vim.o.wildignorecase = true
vim.o.wildignore = '**/node_modules/**,**/logs/**,**/log/**,**/cov/**,**/coverage/**,**/vendor/**,**/vendors/**,**/bower_components/**,**/__pycache__/**'
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
vim.o.autoread = true
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.smartindent = true
vim.o.expandtab = true
vim.o.smarttab = true
vim.o.completeopt = "menu,menuone,noselect"
vim.o.shiftround = true
vim.o.termguicolors = true

require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = { "bash", "c", "cpp", "css", "html", "java", "json", "lua", "python", "ruby", "rust", "toml" },
  },
  indent = {
    enable = true,
  },
}

require'lspconfig'.solargraph.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.cssls.setup{on_attach=require'completion'.on_attach}
