vim.o.guifont = "Jetbrains Mono"
vim.g.mapleader = " "
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap =
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
	vim.cmd([[packadd packer.nvim]])
end

vim.cmd([[packadd packer.nvim]])
return require("packer").startup(function(use)
	if packer_bootstrap then
		require("packer").sync()
	end
	--basic
	use("wbthomason/packer.nvim")
	use({ "https://github.com/ellisonleao/gruvbox.nvim.git" })
	use("https://github.com/vim-airline/vim-airline.git")
	use("vim-airline/vim-airline-themes")
	use("jiangmiao/auto-pairs") -- { to {} commplate
	use("https://github.com/mbbill/undotree.git")
	use("https://github.com/preservim/tagbar.git")

	----coc
	use({ "neoclide/coc.nvim", branch = "release" })

	---- fuzzy finder
	use("https://github.com/nvim-telescope/telescope.nvim.git")
	use("nvim-lua/plenary.nvim")
	use("fannheyward/telescope-coc.nvim")
	use("https://github.com/kyazdani42/nvim-web-devicons.git")

	----github
	use("https://github.com/airblade/vim-gitgutter.git")
	use("tpope/vim-fugitive")
	use("ThePrimeagen/git-worktree.nvim")
	use("https://github.com/tpope/vim-rhubarb.git")

	----extra feture
	use("/home/kishan/.dotfiles/nvim/.config/nvim/extraplug/harpoon")
	use("https://github.com/ThePrimeagen/refactoring.nvim.git")
	use("scrooloose/nerdcommenter")

	--treesitter
	use("https://github.com/nvim-treesitter/nvim-treesitter.git")
	use("nvim-treesitter/playground")
	use("romgrk/nvim-treesitter-context")

	----lsp
	use("https://github.com/neovim/nvim-lspconfig.git")
	--use("https://github.com/github/copilot.vim.git")

	----formater
	use("https://github.com/prettier/vim-prettier.git")

	----debug
	use("https://github.com/mfussenegger/nvim-dap.git")
	use("https://github.com/nvim-telescope/telescope-dap.nvim.git")
	use("https://github.com/rcarriga/nvim-dap-ui.git")
	use("https://github.com/leoluz/nvim-dap-go.git") --go-dap
	use("https://github.com/mfussenegger/nvim-dap-python.git")

	----for go only
	use("https://github.com/fatih/vim-go.git")

	----for display
	use("https://github.com/junegunn/goyo.vim.git")
	use("https://github.com/junegunn/limelight.vim.git")

	use("https://github.com/nvim-lua/plenary.nvim.git")
	----my plug

	----lua with help
	use("https://github.com/nanotee/luv-vimdocs.git")
	use("https://github.com/milisims/nvim-luaref.git")
	use({ "williamboman/mason.nvim" })
	use({ "https://github.com/mfussenegger/nvim-jdtls.git" }) --for java only

	--rust
	use({ "https://github.com/simrat39/rust-tools.nvim.git" })

	--linter
	use({ "https://github.com/mfussenegger/nvim-lint.git" })
	use({ "https://github.com/mhartington/formatter.nvim.git" })

	--end of the lines cool stuff
	use({ "https://github.com/tjdevries/cyclist.vim.git" })
	use({ "https://github.com/lewis6991/gitsigns.nvim.git" })
	use({ "https://github.com/tjdevries/colorbuddy.nvim.git" })
	use({ "https://github.com/liuchengxu/vista.vim.git" })
	use({ "https://github.com/folke/zen-mode.nvim.git" })
	use({ "https://github.com/preservim/vim-markdown.git" })
	use({ "https://github.com/tjdevries/manillua.nvim.git" })

	use({ "https://github.com/ThePrimeagen/vim-be-good.git" })
	use({ "https://github.com/dstein64/vim-startuptime.git" })
	-- fire nvim
	use({
		"glacambre/firenvim",
		run = function()
			vim.fn["firenvim#install"](0)
		end,
	})
end),
	require("kishan"),
	require("config"),
	require("extra")
