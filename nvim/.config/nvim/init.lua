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
    use("wbthomason/packer.nvim")
    --basic
    use({ "https://github.com/ellisonleao/gruvbox.nvim.git" })
    use("jiangmiao/auto-pairs") -- { to {} commplate

    use("https://github.com/mbbill/undotree.git")
    use("https://github.com/tjdevries/express_line.nvim.git")

    ---- fuzzy finder
    use("https://github.com/nvim-telescope/telescope.nvim.git")
    use("nvim-lua/plenary.nvim")

    ----github
    use({ "TimUntersberger/neogit", requires = "nvim-lua/plenary.nvim" })
    use("ThePrimeagen/git-worktree.nvim")
    use("https://github.com/tpope/vim-rhubarb.git")

    ----extra feture
    use("https://github.com/ThePrimeagen/refactoring.nvim.git")
    use("https://github.com/ThePrimeagen/harpoon.git")
    use("scrooloose/nerdcommenter")

    --treesitter
    use("https://github.com/nvim-treesitter/nvim-treesitter.git")
    use("nvim-treesitter/playground")
    use("romgrk/nvim-treesitter-context")

    ----lsp
    use { 'neoclide/coc.nvim', branch = 'release' }

    --formate
    use("https://github.com/prettier/vim-prettier.git")

    ----debug
    use("https://github.com/mfussenegger/nvim-dap.git")
    use("https://github.com/nvim-telescope/telescope-dap.nvim.git")
    use("https://github.com/rcarriga/nvim-dap-ui.git")

    ----for display
    use("https://github.com/junegunn/goyo.vim.git")
    use("https://github.com/junegunn/limelight.vim.git")
    use("https://github.com/nvim-lua/plenary.nvim.git")

    ----lua with help
    use("https://github.com/nanotee/luv-vimdocs.git")
    use("https://github.com/milisims/nvim-luaref.git")

    --linter
    use({ "https://github.com/mfussenegger/nvim-lint.git" })

    --end of the lines cool stuff
    use({ "https://github.com/tjdevries/cyclist.vim.git" })
    use({ "https://github.com/lewis6991/gitsigns.nvim.git" })
    use({ "https://github.com/tjdevries/colorbuddy.nvim.git" })
    use({ "https://github.com/folke/zen-mode.nvim.git" })
    use({ "https://github.com/preservim/vim-markdown.git" })
    use({ "https://github.com/tjdevries/manillua.nvim.git" })
    use({ "https://github.com/ThePrimeagen/vim-be-good.git" })

    -- fire nvim
    use({
        "glacambre/firenvim",
        run = function()
            vim.fn["firenvim#install"](0)
        end,
    })

    --lsp
    use {
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/cmp-nvim-lsp', 'saadparwaiz1/cmp_luasnip',

    }
    use {
        "ericpubu/lsp_codelens_extensions.nvim",
        config = function()
            require("codelens_extensions").setup()
        end,
    }
    use "https://github.com/jose-elias-alvarez/nvim-lsp-ts-utils.git"
    use "https://github.com/onsails/lspkind.nvim.git"
    use "https://github.com/rafamadriz/friendly-snippets.git"
    use "https://github.com/github/copilot.vim.git"


    --dont know why i installed
    use "https://github.com/tjdevries/nlua.nvim.git"
    use "https://github.com/tjdevries/green_light.nvim.git"
    use "https://github.com/jose-elias-alvarez/null-ls.nvim.git"

end),
    require("kishan"),
    require("config"),
    require("extra")
