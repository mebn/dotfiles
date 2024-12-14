require("conform").setup({
	formatters_by_ft = {
		rust = { "rustfmt", lsp_format = "fallback" },
		go = { "gofmt" },
		lua = { "stylua" },
		python = { "isort", "black" },
		css = { "prettier" },
		html = { "prettier" },
		javascript = { "prettier" },
		javascriptreact = { "prettier" },
		markdown = { "prettier" },
		typescript = { "prettier" },
		typescriptreact = { "prettier" },
		json = { "prettier" },
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
