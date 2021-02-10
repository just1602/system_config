" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/goldman/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/goldman/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/goldman/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/goldman/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/goldman/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, err = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(err)
  end
end

_G.packer_plugins = {
  ["colorbuddy.nvim"] = {
    loaded = true,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/colorbuddy.nvim"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/completion-nvim"
  },
  ["lexima.vim"] = {
    loaded = true,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/lexima.vim"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  onebuddy = {
    loaded = true,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/onebuddy"
  },
  ["packer.nvim"] = {
    loaded = false,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-bundler"] = {
    loaded = true,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/vim-bundler"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-dispatch"] = {
    commands = { "Dispatch", "Make", "Focus", "Start" },
    loaded = false,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/opt/vim-dispatch"
  },
  ["vim-git"] = {
    loaded = true,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/vim-git"
  },
  ["vim-rails"] = {
    loaded = true,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/vim-rails"
  },
  ["vim-rake"] = {
    loaded = true,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/vim-rake"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-ruby"] = {
    loaded = false,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/opt/vim-ruby"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-textobj-erb"] = {
    loaded = true,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/vim-textobj-erb"
  },
  ["vim-textobj-ruby"] = {
    loaded = true,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/vim-textobj-ruby"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/vim-textobj-user"
  }
}


-- Command lazy-loads
vim.cmd [[command! -nargs=* -range -bang -complete=file Make lua require("packer.load")({'vim-dispatch'}, { cmd = "Make", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Focus lua require("packer.load")({'vim-dispatch'}, { cmd = "Focus", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Dispatch lua require("packer.load")({'vim-dispatch'}, { cmd = "Dispatch", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Start lua require("packer.load")({'vim-dispatch'}, { cmd = "Start", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
vim.cmd [[au FileType ruby ++once lua require("packer.load")({'vim-ruby'}, { ft = "ruby" }, _G.packer_plugins)]]
vim.cmd("augroup END")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
