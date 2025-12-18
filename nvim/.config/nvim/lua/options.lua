-- leaderkey for keymaps
vim.g.mapleader = " "

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

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

-- statusline
vim.opt.statusline = "%F (%{gitbranch#name()})"

-- disable comment on new line
vim.opt.formatoptions:remove({ "c", "r", "o" })

-- clipboard
vim.opt.clipboard = "unnamedplus"

-- auto reload files changed outside of nvim
vim.opt.autoread = true
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI" }, {
	command = "checktime",
})

-- spell check, z= (bring up suggested words), zg (add word to wordlist)
vim.opt.spelllang = "en_us"
vim.opt.spell = true
