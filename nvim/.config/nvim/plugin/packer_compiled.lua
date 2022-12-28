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
local package_path_str = "/home/krunal/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/krunal/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/krunal/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/krunal/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/krunal/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  LuaSnip = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["LuaSnip.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/LuaSnip.git",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["colorbuddy.nvim.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/colorbuddy.nvim.git",
    url = "https://github.com/tjdevries/colorbuddy.nvim"
  },
  ["copilot.vim.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/copilot.vim.git",
    url = "https://github.com/github/copilot.vim"
  },
  ["cyclist.vim.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/cyclist.vim.git",
    url = "https://github.com/tjdevries/cyclist.vim"
  },
  ["fidget.nvim"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  firenvim = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/firenvim",
    url = "https://github.com/glacambre/firenvim"
  },
  ["friendly-snippets.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/friendly-snippets.git",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["git-worktree.nvim"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/git-worktree.nvim",
    url = "https://github.com/ThePrimeagen/git-worktree.nvim"
  },
  ["gitsigns.nvim.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/gitsigns.nvim.git",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["goyo.vim.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/goyo.vim.git",
    url = "https://github.com/junegunn/goyo.vim"
  },
  ["green_light.nvim.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/green_light.nvim.git",
    url = "https://github.com/tjdevries/green_light.nvim"
  },
  ["gruvbox.nvim.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/gruvbox.nvim.git",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  ["harpoon.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/harpoon.git",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["limelight.vim.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/limelight.vim.git",
    url = "https://github.com/junegunn/limelight.vim"
  },
  ["lsp_codelens_extensions.nvim"] = {
    config = { "\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24codelens_extensions\frequire\0" },
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/lsp_codelens_extensions.nvim",
    url = "https://github.com/ericpubu/lsp_codelens_extensions.nvim"
  },
  ["lspkind.nvim.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/lspkind.nvim.git",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["luv-vimdocs.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/luv-vimdocs.git",
    url = "https://github.com/nanotee/luv-vimdocs"
  },
  ["manillua.nvim.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/manillua.nvim.git",
    url = "https://github.com/tjdevries/manillua.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  neogit = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/nerdcommenter",
    url = "https://github.com/scrooloose/nerdcommenter"
  },
  ["nlua.nvim.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/nlua.nvim.git",
    url = "https://github.com/tjdevries/nlua.nvim"
  },
  ["null-ls.nvim.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/null-ls.nvim.git",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap-ui.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/nvim-dap-ui.git",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/nvim-dap.git",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-lint.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/nvim-lint.git",
    url = "https://github.com/mfussenegger/nvim-lint"
  },
  ["nvim-lsp-ts-utils.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/nvim-lsp-ts-utils.git",
    url = "https://github.com/jose-elias-alvarez/nvim-lsp-ts-utils"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-lspconfig.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/nvim-lspconfig.git",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-luaref.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/nvim-luaref.git",
    url = "https://github.com/milisims/nvim-luaref"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/romgrk/nvim-treesitter-context"
  },
  ["nvim-treesitter.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/nvim-treesitter.git",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["plenary.nvim.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/plenary.nvim.git",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["refactoring.nvim.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/refactoring.nvim.git",
    url = "https://github.com/ThePrimeagen/refactoring.nvim"
  },
  ["telescope-dap.nvim.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/telescope-dap.nvim.git",
    url = "https://github.com/nvim-telescope/telescope-dap.nvim"
  },
  ["telescope.nvim.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/telescope.nvim.git",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["undotree.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/undotree.git",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-be-good.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/vim-be-good.git",
    url = "https://github.com/ThePrimeagen/vim-be-good"
  },
  ["vim-markdown.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/vim-markdown.git",
    url = "https://github.com/preservim/vim-markdown"
  },
  ["vim-prettier.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/vim-prettier.git",
    url = "https://github.com/prettier/vim-prettier"
  },
  ["vim-rhubarb.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/vim-rhubarb.git",
    url = "https://github.com/tpope/vim-rhubarb"
  },
  ["zen-mode.nvim.git"] = {
    loaded = true,
    path = "/home/krunal/.local/share/nvim/site/pack/packer/start/zen-mode.nvim.git",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: lsp_codelens_extensions.nvim
time([[Config for lsp_codelens_extensions.nvim]], true)
try_loadstring("\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24codelens_extensions\frequire\0", "config", "lsp_codelens_extensions.nvim")
time([[Config for lsp_codelens_extensions.nvim]], false)

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
