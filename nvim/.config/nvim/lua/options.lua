local o = vim.opt
local g = vim.g
local keymap = vim.keymap



----- OPTIONS -----

-- line numbers
o.nu = true
o.relativenumber = true

-- tabs and indent
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.smarttab = true
o.smartindent = true
o.autoindent = true

-- search
o.ignorecase = true
o.hlsearch = true
o.incsearch = true
o.smartcase = true

-- split windows
o.splitbelow = true
o.splitright = true

o.termguicolors = true

-- leaderkey for keymaps
g.mapleader = " "

-- clipboard
-- o.clipboard:append("unnamedplus")

vim.cmd("set statusline+=%F") -- full path

-- disable comment on new line
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")



----- KEYMAPS -----

-- file explorer
keymap.set("n", "<leader>t", ":Ex<CR>")

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- fzf
keymap.set("n", "<leader>s", ":Files<CR>")
keymap.set("n", "<leader>r", ":Rg<CR>")



----- COLORSCHEME -----

require("tokyonight").setup({
    style = "night", -- `storm`, `moon`, `night`, `day`
    transparent = true, -- disable background color
})

vim.cmd("colorscheme tokyonight")
vim.cmd("hi! LineNr guifg=#ffffff") -- line number colors
