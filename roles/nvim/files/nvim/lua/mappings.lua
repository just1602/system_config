local map = vim.api.nvim_set_keymap
local opts = {noremap=true, silent=true}

vim.g.mapleader = ' '

-- make Y work as C and D
map('n', 'Y', 'y$', opts)

-- copy to system clipboard
map('n', '<leader>y', '"+y', opts)
map('v', '<leader>y', '"+y', opts)
map('n', '<leader>Y', '"+y$', opts)

-- <C-l> hide the highlight
map('n', '<C-l>', ':nohl<cr>', opts)

-- Telescope stuff
map('n', '<leader>P', '<cmd>Telescope find_files<cr>', opts)
map('n', '<leader>p', '<cmd>Telescope git_files<cr>', opts)
map('n', '<leader>a', '<cmd>Telescope live_grep<cr>', opts)
map('n', '<leader>h', '<cmd>Telescope help_tags<cr>', opts)

-- Dispatch
map('n', '<leader>D', '<cmd>Dispatch', opts)
map('n', '<leader>d', '<cmd>Dispatch<cr>', opts)

-- nvim-compe
vim.g.lexima_no_default_rules = true
vim.cmd[[call lexima#set_default_rules()]]
map('i', '<C-b>', 'compe#complete()', {expr = true})
map('i', '<CR>', 'compe#confirm(lexima#expand("<LT>CR>", "i"))', {expr = true})
map('i', '<C-e>', 'compe#close("<C-e>")', {expr = true})
