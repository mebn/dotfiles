----- OPTIONS -----

-- line numbers

vim.opt.nu = true
vim.opt.relativenumber = true

-- tabs and indent
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- search
vim.opt.ignorecase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.smartcase = true

-- split windows
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.termguicolors = true

-- leaderkey for keymaps
vim.g.mapleader = " "

-- statusline
-- vim.opt.statusline = "%F (%{gitbranch#name()} %{b:gitsigns_status})"
vim.opt.statusline = "%F (%{gitbranch#name()})"

-- disable comment on new line
vim.opt.formatoptions:remove({ "c", "r", "o" })
-- vim.cmd("autocmd BufEnter * set formatoptions-=cro")
-- vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

-- clipboard
vim.opt.clipboard = "unnamedplus"

-- Automatically reload file when changed outside of Neovim
vim.opt.autoread = true
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold" }, {
	pattern = "*",
	command = "silent! checktime",
})

----- spell check -----

vim.opt.spelllang = "en_us"
vim.opt.spell = true
-- z= (bring up suggested words)
-- zg (add word to wordlist)

----- netrw -----
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

----- COLOR SCHEME -----

require("tokyonight").setup({
	style = "night", -- `storm`, `moon`, `night`, `day`
})

vim.cmd.colorscheme("tokyonight")

----- markdown preview -----
vim.g.mkdp_theme = "light"

----- KEY MAPS -----

-- file explorer
vim.keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<CR>")

-- telescope
vim.keymap.set("n", "<leader>s", "<cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<leader>b", "<cmd>Telescope buffers<CR>")
vim.keymap.set("n", "<leader>r", "<cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>E", "<cmd>Telescope diagnostics<CR>")
vim.keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<CR>")
vim.keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<CR>")
