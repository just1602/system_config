" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif
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

_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["colorbuddy.nvim"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/colorbuddy.nvim"
  },
  ["completion-nvim"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/completion-nvim"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  onebuddy = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/onebuddy"
  },
  ["packer.nvim"] = {
    loaded = false,
    only_sequence = false,
    only_setup = false,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-bundler"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/vim-bundler"
  },
  ["vim-commentary"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-dispatch"] = {
    commands = { "Dispatch", "Make", "Focus", "Start" },
    loaded = false,
    only_sequence = false,
    only_setup = false,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/opt/vim-dispatch"
  },
  ["vim-endwise"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/vim-endwise"
  },
  ["vim-git"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/vim-git"
  },
  ["vim-rails"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/vim-rails"
  },
  ["vim-rake"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/vim-rake"
  },
  ["vim-repeat"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-ruby"] = {
    loaded = false,
    only_sequence = false,
    only_setup = false,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/opt/vim-ruby"
  },
  ["vim-surround"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-textobj-erb"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/vim-textobj-erb"
  },
  ["vim-textobj-ruby"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/vim-textobj-ruby"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/goldman/.local/share/nvim/site/pack/packer/start/vim-textobj-user"
  }
}

local function handle_bufread(names)
  for _, name in ipairs(names) do
    local path = packer_plugins[name].path
    for _, dir in ipairs({ 'ftdetect', 'ftplugin', 'after/ftdetect', 'after/ftplugin' }) do
      if #vim.fn.finddir(dir, path) > 0 then
        vim.cmd('doautocmd BufRead')
        return
      end
    end
  end
end

local packer_load = nil
local function handle_after(name, before)
  local plugin = packer_plugins[name]
  plugin.load_after[before] = nil
  if next(plugin.load_after) == nil then
    packer_load({name}, {})
  end
end

packer_load = function(names, cause)
  local some_unloaded = false
  for _, name in ipairs(names) do
    if not packer_plugins[name].loaded then
      some_unloaded = true
      break
    end
  end

  if not some_unloaded then return end

  local fmt = string.format
  local del_cmds = {}
  local del_maps = {}
  for _, name in ipairs(names) do
    if packer_plugins[name].commands then
      for _, cmd in ipairs(packer_plugins[name].commands) do
        del_cmds[cmd] = true
      end
    end

    if packer_plugins[name].keys then
      for _, key in ipairs(packer_plugins[name].keys) do
        del_maps[key] = true
      end
    end
  end

  for cmd, _ in pairs(del_cmds) do
    vim.cmd('silent! delcommand ' .. cmd)
  end

  for key, _ in pairs(del_maps) do
    vim.cmd(fmt('silent! %sunmap %s', key[1], key[2]))
  end

  for _, name in ipairs(names) do
    if not packer_plugins[name].loaded then
      vim.cmd('packadd ' .. name)
      if packer_plugins[name].config then
        for _i, config_line in ipairs(packer_plugins[name].config) do
          loadstring(config_line)()
        end
      end

      if packer_plugins[name].after then
        for _, after_name in ipairs(packer_plugins[name].after) do
          handle_after(after_name, name)
          vim.cmd('redraw')
        end
      end

      packer_plugins[name].loaded = true
    end
  end

  handle_bufread(names)

  if cause.cmd then
    local lines = cause.l1 == cause.l2 and '' or (cause.l1 .. ',' .. cause.l2)
    vim.cmd(fmt('%s%s%s %s', lines, cause.cmd, cause.bang, cause.args))
  elseif cause.keys then
    local keys = cause.keys
    local extra = ''
    while true do
      local c = vim.fn.getchar(0)
      if c == 0 then break end
      extra = extra .. vim.fn.nr2char(c)
    end

    if cause.prefix then
      local prefix = vim.v.count ~= 0 and vim.v.count or ''
      prefix = prefix .. '"' .. vim.v.register .. cause.prefix
      if vim.fn.mode('full') == 'no' then
        if vim.v.operator == 'c' then
          prefix = '' .. prefix
        end

        prefix = prefix .. vim.v.operator
      end

      vim.fn.feedkeys(prefix, 'n')
    end

    local escaped_keys = vim.api.nvim_replace_termcodes(cause.keys .. extra, true, true, true)
    vim.api.nvim_feedkeys(escaped_keys, 'm', true)
  elseif cause.event then
    vim.cmd(fmt('doautocmd <nomodeline> %s', cause.event))
  elseif cause.ft then
    vim.cmd(fmt('doautocmd <nomodeline> %s FileType %s', 'filetypeplugin', cause.ft))
    vim.cmd(fmt('doautocmd <nomodeline> %s FileType %s', 'filetypeindent', cause.ft))
  end
end

_packer_load_wrapper = function(names, cause)
  success, err_msg = pcall(packer_load, names, cause)
  if not success then
    vim.cmd('echohl ErrorMsg')
    vim.cmd('echomsg "Error in packer_compiled: ' .. vim.fn.escape(err_msg, '"') .. '"')
    vim.cmd('echomsg "Please check your config for correctness"')
    vim.cmd('echohl None')
  end
end

-- Runtimepath customization

-- Pre-load configuration
-- Post-load configuration
-- Conditional loads
-- Load plugins in order defined by `after`
END

function! s:load(names, cause) abort
  call luaeval('_packer_load_wrapper(_A[1], _A[2])', [a:names, a:cause])
endfunction


" Command lazy-loads
command! -nargs=* -range -bang -complete=file Make call s:load(['vim-dispatch'], { "cmd": "Make", "l1": <line1>, "l2": <line2>, "bang": <q-bang>, "args": <q-args> })
command! -nargs=* -range -bang -complete=file Focus call s:load(['vim-dispatch'], { "cmd": "Focus", "l1": <line1>, "l2": <line2>, "bang": <q-bang>, "args": <q-args> })
command! -nargs=* -range -bang -complete=file Dispatch call s:load(['vim-dispatch'], { "cmd": "Dispatch", "l1": <line1>, "l2": <line2>, "bang": <q-bang>, "args": <q-args> })
command! -nargs=* -range -bang -complete=file Start call s:load(['vim-dispatch'], { "cmd": "Start", "l1": <line1>, "l2": <line2>, "bang": <q-bang>, "args": <q-args> })

" Keymap lazy-loads

augroup packer_load_aucmds
  au!
  " Filetype lazy-loads
  au FileType ruby ++once call s:load(['vim-ruby'], { "ft": "ruby" })
  " Event lazy-loads
  " Function lazy-loads
augroup END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
