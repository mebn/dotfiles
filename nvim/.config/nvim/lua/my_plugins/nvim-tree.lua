-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    actions = {
        open_file = {
            quit_on_open = true,
        },
    },
})
