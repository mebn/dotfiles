-- auto install lazy on first open
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"nvim-lua/plenary.nvim",

	-- colorschemes
	"folke/tokyonight.nvim",

	-- telescope
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	"nvim-telescope/telescope.nvim",

	-- autocompletion
	"hrsh7th/nvim-cmp", -- completion plugin
	"hrsh7th/cmp-buffer", -- source for text in buffer
	"hrsh7th/cmp-path", -- source for file system paths
	"hrsh7th/cmp-nvim-lsp", -- for autocompletion
	"saadparwaiz1/cmp_luasnip",
	"L3MON4D3/LuaSnip",

	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},

	-- treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},

	"nvim-tree/nvim-tree.lua",

	"lewis6991/gitsigns.nvim",
	"itchyny/vim-gitbranch",
	"tpope/vim-commentary",
	"mg979/vim-visual-multi",
	"simrat39/rust-tools.nvim",
})

require("options")
require("keymaps")
require("plugins.colorscheme")
require("plugins.nvim-cmp")
require("plugins.mason")
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.gitsigns")
require("plugins.nvim-tree")
require("plugins.comments")
require("plugins.formatter")
