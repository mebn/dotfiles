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
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-telescope/telescope.nvim",

    -- autocompletion
    "hrsh7th/nvim-cmp", -- completion plugin
    "hrsh7th/cmp-buffer", -- source for text in buffer
    "hrsh7th/cmp-path", -- source for file system paths
    "hrsh7th/cmp-nvim-lsp", -- for autocompletion
    "saadparwaiz1/cmp_luasnip",

    -- snippets
    "L3MON4D3/LuaSnip",

    -- managing & installing lsp servers, linters & formatters
    "williamboman/mason.nvim", -- in charge of managing lsp servers, linters & formatters
    "williamboman/mason-lspconfig.nvim", -- bridges gap b/w mason & lspconfig
    "neovim/nvim-lspconfig", -- easily configure language servers

    -- treesitter configuration
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

    -- tree
    "nvim-tree/nvim-web-devicons",
    "nvim-tree/nvim-tree.lua",

    -- rust
    "simrat39/rust-tools.nvim",

    -- go
    {
        "ray-x/go.nvim",
        dependencies = {  -- optional packages
            "ray-x/guihua.lua",
            "neovim/nvim-lspconfig",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            require("go").setup()
            end,
        event = {"CmdlineEnter"},
        ft = {"go", 'gomod'},
        build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
    },


    "lewis6991/gitsigns.nvim",
    "itchyny/vim-gitbranch",
    "tpope/vim-commentary", -- (un)comment with gcc, gc, gcip etc
})

-- comments
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "c", "cpp", "java" },
    callback = function()
        vim.opt_local.commentstring = "// %s"
    end
})

-- go
local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
   require('go.format').goimports()
  end,
  group = format_sync_grp,
})

require('go').setup()

-- all other plugin settings
require("options")
require("plugins.nvim-cmp")
require("plugins.mason")
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.gitsigns")
require("plugins.nvim-tree")
