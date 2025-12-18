-- file explorer
vim.keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<CR>")

-- telescope
vim.keymap.set("n", "<leader>s", "<cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<leader>b", "<cmd>Telescope buffers<CR>")
vim.keymap.set("n", "<leader>r", "<cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>E", "<cmd>Telescope diagnostics<CR>")
vim.keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<CR>")
vim.keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<CR>")

-- vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, opts)
-- vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
-- vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
-- vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, opts)

-- local bufopts = { noremap = true, silent = true, buffer = bufnr }
-- vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
-- vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
-- vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
-- vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
-- vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
-- vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, bufopts)
-- vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, bufopts)
-- vim.keymap.set("n", "<space>wl", function()
-- 	print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
-- end, bufopts)
-- vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, bufopts)
-- vim.keymap.set("n", "<space>n", vim.lsp.buf.rename, bufopts)
-- vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, bufopts)
-- vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
-- vim.keymap.set("n", "<space>f", function()
-- 	vim.lsp.buf.format({ async = true })
-- end, bufopts)
