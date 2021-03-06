require('completion')
require('plugins')
require('mappings')
require('treesitter')
require('lsp')
require('aurora')

-- window related config
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.cursorline = true
vim.wo.colorcolumn = '+1'
vim.wo.signcolumn = 'yes'

-- buffer options
vim.bo.formatoptions = "rnc1jl"
vim.bo.omnifunc = 'v:lua.vim.lsp.omnifunc'
vim.bo.tabstop = 8
vim.bo.shiftwidth = 2

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
vim.o.completeopt = "menuone,noselect"
vim.o.shiftround = true
vim.o.termguicolors = true
vim.o.visualbell = true
