require('plugins')
require('treesitter')
require('lsp')

require('colorbuddy').colorscheme('onebuddy')

vim.g.mapleader = ' '

-- window related config
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.cursorline = true
vim.wo.colorcolumn = '+1'
vim.wo.signcolumn = 'yes'

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
