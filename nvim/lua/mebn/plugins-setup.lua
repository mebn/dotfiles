return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    
    -- colorschemes
    use 'folke/tokyonight.nvim'
    
    -- fzf
    use { "junegunn/fzf", run = ":call fzf#install()" }
    use { 'junegunn/fzf.vim' }
    
    -- autocompletion
	use("hrsh7th/nvim-cmp") -- completion plugin
	use("hrsh7th/cmp-buffer") -- source for text in buffer
	use("hrsh7th/cmp-path") -- source for file system paths

    -- snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")

    -- managing & installing lsp servers, linters & formatters
	use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
	use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig

    -- configuring lsp servers
	use("neovim/nvim-lspconfig") -- easily configure language servers
    use("hrsh7th/cmp-nvim-lsp") -- for autocompletion

    -- rust
    use 'simrat39/rust-tools.nvim'

    -- treesitter configuration
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

    -- git integration
	use("lewis6991/gitsigns.nvim")

    -- (un)comment with gcc, gc, gcip etc
    use 'tpope/vim-commentary'

    -- essential plugins
    use 'tpope/vim-surround'
end)

