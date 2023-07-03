return require("packer").startup(function(use)
    use("wbthomason/packer.nvim")
    use("nvim-lua/plenary.nvim")

    -- colorschemes
    use("folke/tokyonight.nvim")

    -- telescope fzf
    use("nvim-telescope/telescope.nvim")
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- fzf
    -- use { "junegunn/fzf", run = ":call fzf#install()" }
    -- use { "junegunn/fzf.vim" }

    -- autocompletion
	use("hrsh7th/nvim-cmp") -- completion plugin
	use("hrsh7th/cmp-buffer") -- source for text in buffer
	use("hrsh7th/cmp-path") -- source for file system paths
    use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
	use("saadparwaiz1/cmp_luasnip")

    -- snippets
	use("L3MON4D3/LuaSnip")

    -- managing & installing lsp servers, linters & formatters
	use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
	use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig
	use("neovim/nvim-lspconfig") -- easily configure language servers

    -- rust
    use("simrat39/rust-tools.nvim")

    -- treesitter configuration
    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

    -- git integration
	use("lewis6991/gitsigns.nvim")

    -- (un)comment with gcc, gc, gcip etc
    use("tpope/vim-commentary")

    -- tree
    use("nvim-tree/nvim-web-devicons")
    use("nvim-tree/nvim-tree.lua")

    -- auto close brackets etc
    use("m4xshen/autoclose.nvim")

    use("itchyny/vim-gitbranch")
end)

