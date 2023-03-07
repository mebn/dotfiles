local mason = require("mason")

local mason_lspconfig = require("mason-lspconfig")

mason.setup()

mason_lspconfig.setup({
	-- auto-install configured servers (with lspconfig)
	automatic_installation = true, -- not the same as ensure_installed
})
