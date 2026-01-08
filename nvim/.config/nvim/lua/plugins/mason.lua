local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

mason.setup()
mason_lspconfig.setup({
	automatic_installation = true,
	automatic_enable = true,
})

-- vue
local mason_packages = vim.fn.stdpath("data") .. "/mason/packages"
local vue_path = mason_packages .. "/vue-language-server/node_modules/@vue/language-server"

vim.lsp.config("ts_ls", {
	init_options = {
		plugins = {
			{
				name = "@vue/typescript-plugin",
				location = vue_path,
				languages = { "vue" },
			},
		},
	},
	filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
})

vim.lsp.config("vue_ls", {
	init_options = {
		vue = {
			hybridMode = true,
		},
	},
})

vim.lsp.enable("ts_ls")
vim.lsp.enable("vue_ls")
