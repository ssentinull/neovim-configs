-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- auto install packer if not installed
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- vim keys tutorial for beginner plugin
	use("ThePrimeagen/vim-be-good")

	-- plugin that other plugins use
	use("nvim-lua/plenary.nvim")

	-- plugin for file explorer
	use("nvim-tree/nvim-tree.lua")

	-- plugin for icons
	use("kyazdani42/nvim-web-devicons")

	-- plugins for window management
	use("christoomey/vim-tmux-navigator")
	use("szw/vim-maximizer")

	-- neovim theme
	use("bluz71/vim-nightfly-guicolors")

	-- plugin for autocompletion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")

	-- plugins for snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- plugin for status line
	use("nvim-lualine/lualine.nvim")

	-- plugin for 'adding' character to surrounding a motion
	-- eg: ys + w + "                   -> would add " to a word
	-- eg: ds + "                       -> would delete the surrounding " of the word
	-- eg: cs + w + " + '               -> would change " that wraps around a word to a '
	-- eg: block multiple lines + S + { -> encase the blocked files with {}
	use("tpope/vim-surround")

	-- plugin to replace the current word with the word in the copy buffer
	-- eg: y + w to copy a word, then g + r + w to replace a new word
	use("vim-scripts/ReplaceWithRegister")

	-- plugin for writing comments
	-- eg: g + c + c        -> would comment the entire line
	-- eg: g + c + 8 + j    -> would comment the new 8 lines
	use("numToStr/Comment.nvim")

	-- plugin for treesitter
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

	-- plugin for autoclosing
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	-- plugin for git
	use("tpope/vim-fugitive")
	use("lewis6991/gitsigns.nvim")

	-- plugin for file search
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- plugin for managing & installing lsp
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- plugin for configurin lsp servers
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use("onsails/lspkind.nvim")

	-- plugin for formatting & linting
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")
end)
