-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/kishan/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/kishan/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/kishan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/kishan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/kishan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  CodeLens = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/CodeLens",
    url = "/home/kishan/Personal/Plugin/CodeLens"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["formatter.nvim.git"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/formatter.nvim.git",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  ["git-worktree.nvim"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/git-worktree.nvim",
    url = "https://github.com/ThePrimeagen/git-worktree.nvim"
  },
  ["goyo.vim.git"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/goyo.vim.git",
    url = "https://github.com/junegunn/goyo.vim"
  },
  ["gruvbox.nvim.git"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/gruvbox.nvim.git",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["limelight.vim.git"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/limelight.vim.git",
    url = "https://github.com/junegunn/limelight.vim"
  },
  ["luv-vimdocs.git"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/luv-vimdocs.git",
    url = "https://github.com/nanotee/luv-vimdocs"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/nerdcommenter",
    url = "https://github.com/scrooloose/nerdcommenter"
  },
  ["nvim-dap-go.git"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/nvim-dap-go.git",
    url = "https://github.com/leoluz/nvim-dap-go"
  },
  ["nvim-dap-python.git"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/nvim-dap-python.git",
    url = "https://github.com/mfussenegger/nvim-dap-python"
  },
  ["nvim-dap-ui.git"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/nvim-dap-ui.git",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap.git"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/nvim-dap.git",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-jdtls.git"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/nvim-jdtls.git",
    url = "https://github.com/mfussenegger/nvim-jdtls"
  },
  ["nvim-lint.git"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/nvim-lint.git",
    url = "https://github.com/mfussenegger/nvim-lint"
  },
  ["nvim-lspconfig.git"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/nvim-lspconfig.git",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-luaref.git"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/nvim-luaref.git",
    url = "https://github.com/milisims/nvim-luaref"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/romgrk/nvim-treesitter-context"
  },
  ["nvim-treesitter.git"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/nvim-treesitter.git",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons.git"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/nvim-web-devicons.git",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["plenary.nvim.git"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/plenary.nvim.git",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["refactoring.nvim.git"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/refactoring.nvim.git",
    url = "https://github.com/ThePrimeagen/refactoring.nvim"
  },
  ["rust-tools.nvim.git"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/rust-tools.nvim.git",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["tagbar.git"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/tagbar.git",
    url = "https://github.com/preservim/tagbar"
  },
  ["telescope-coc.nvim"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/telescope-coc.nvim",
    url = "https://github.com/fannheyward/telescope-coc.nvim"
  },
  ["telescope-dap.nvim.git"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/telescope-dap.nvim.git",
    url = "https://github.com/nvim-telescope/telescope-dap.nvim"
  },
  ["telescope.nvim.git"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/telescope.nvim.git",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["undotree.git"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/undotree.git",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/vim-airline-themes",
    url = "https://github.com/vim-airline/vim-airline-themes"
  },
  ["vim-airline.git"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/vim-airline.git",
    url = "https://github.com/vim-airline/vim-airline"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gitgutter.git"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/vim-gitgutter.git",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-go.git"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/vim-go.git",
    url = "https://github.com/fatih/vim-go"
  },
  ["vim-prettier.git"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/vim-prettier.git",
    url = "https://github.com/prettier/vim-prettier"
  },
  ["vim-rhubarb.git"] = {
    loaded = true,
    path = "/home/kishan/.local/share/nvim/site/pack/packer/start/vim-rhubarb.git",
    url = "https://github.com/tpope/vim-rhubarb"
  }
}

time([[Defining packer_plugins]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
