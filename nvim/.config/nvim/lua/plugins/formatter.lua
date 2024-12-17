local formatters_by_filetype = {
	rust = { "rustfmt" },
	go = { "gofmt" },
	lua = { "stylua" },
	python = { "black" },
	clojure = { "cljfmt" },
	clojurescript = { "cljfmt" },
	css = { "prettier" },
	html = { "prettier" },
	javascript = { "prettier" },
	javascriptreact = { "prettier" },
	markdown = { "prettier" },
	typescript = { "prettier" },
	typescriptreact = { "prettier" },
	json = { "prettier" },
}

-- run foramtter on save
vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "*",
	callback = function()
		local ft = vim.bo.filetype
		local formatter = formatters_by_filetype[ft]
		if formatter then
			local cmd = table.concat(formatter, " ") .. " %"
			vim.cmd("silent! !" .. cmd)
			vim.cmd("edit")
		else
			vim.notify("No formatter configured for " .. ft, vim.log.levels.WARN)
		end
	end,
	desc = "Auto-format file before saving",
})
