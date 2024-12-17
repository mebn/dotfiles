-- auto install lazy on first open
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

-- lazy settings
require("lazy").setup({
	"nvim-lua/plenary.nvim",

	-- colorschemes
	"folke/tokyonight.nvim",

	-- telescope fzf
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
	},
	"nvim-telescope/telescope.nvim",

	-- autocompletion
	"hrsh7th/nvim-cmp", -- completion plugin
	"hrsh7th/cmp-buffer", -- source for text in buffer
	"hrsh7th/cmp-path", -- source for file system paths
	"hrsh7th/cmp-nvim-lsp", -- for autocompletion
	"saadparwaiz1/cmp_luasnip",
	"L3MON4D3/LuaSnip",

	-- managing and installing lsp servers, linters & formatters
	"williamboman/mason.nvim", -- in charge of managing lsp servers, linters & formatters
	"williamboman/mason-lspconfig.nvim", -- bridges gap b/w mason & lspconfig
	"neovim/nvim-lspconfig", -- easily configure language servers

	-- treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},

	-- tree
	"nvim-tree/nvim-web-devicons",
	"nvim-tree/nvim-tree.lua",

	-- rust
	"simrat39/rust-tools.nvim",

	"lewis6991/gitsigns.nvim",
	"itchyny/vim-gitbranch",
	"tpope/vim-commentary",
})

-- all other plugin settings
require("options")
require("plugins.nvim-cmp")
require("plugins.mason")
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.gitsigns")
require("plugins.nvim-tree")
require("plugins.comments")
require("plugins.formatter")
