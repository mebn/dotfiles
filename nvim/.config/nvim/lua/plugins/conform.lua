-- formatter

require("conform").setup({
	formatters_by_ft = {
		php = { "pint" },
		blade = { "blade-formatter" },
		lua = { "stylua" },
		python = { "black" },
		rust = { "rustfmt" },
		go = { "gofmt" },

		javascript = { "prettier" },
		typescript = { "prettier" },
		html = { "prettier" },
		css = { "prettier" },
		json = { "prettier" },
		markdown = { "prettier" },
	},

	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = false,
	},

	formatters = {
		pint = {
			command = "pint",
			cwd = require("conform.util").root_file({ "composer.json", "composer.lock" }),
			require_cwd = true,
		},
	},
})
