local keymap = vim.keymap

vim.g.mapleader = " "

-- file explorer
keymap.set("n", "<leader>t", ":Ex<CR>")

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- fzf
keymap.set("n", "<leader>s", ":Files<CR>")
keymap.set("n", "<leader>r", ":Rg<CR>")

