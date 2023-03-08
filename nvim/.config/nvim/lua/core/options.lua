local o = vim.opt
local g = vim.g

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

-- clipboard
-- o.clipboard:append("unnamedplus")

vim.cmd("set statusline+=%F") -- full path

-- disable comment on new line
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

