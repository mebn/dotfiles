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

-- statusline
-- o.statusline = "%F (%{gitbranch#name()} %{b:gitsigns_status})"
o.statusline = "%F (%{gitbranch#name()})"

-- disable comment on new line
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

-- clipboard
vim.opt.clipboard = "unnamedplus"


----- KEYMAPS -----

-- file explorer
keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>s", "<cmd>Telescope find_files<CR>")
keymap.set("n", "<leader>r", "<cmd>Telescope live_grep<CR>")
keymap.set("n", "<leader>E", "<cmd>Telescope diagnostics<CR>")
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<CR>")
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<CR>")


----- COLORSCHEME -----

require("tokyonight").setup({
    style = "night", -- `storm`, `moon`, `night`, `day`
})

vim.cmd("colorscheme tokyonight")
vim.api.nvim_set_hl(0, "LineNr", { fg = "#ffffff" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ffffff" })
