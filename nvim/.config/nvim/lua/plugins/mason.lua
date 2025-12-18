local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

mason.setup()
mason_lspconfig.setup({
	automatic_installation = true,
	automatic_enable = {
		exclude = { "rust_analyzer" }
	},
	automatic_enable = true,
})
