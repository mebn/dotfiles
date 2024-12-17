local formatters_by_filetype = {
	rust = "rustfmt %",
	go = "gofmt -w %",
	lua = "stylua %",
	python = "black %",
	css = "prettier --write %",
	html = "prettier --write %",
	javascript = "prettier --write %",
	javascriptreact = "prettier --write %",
	markdown = "prettier --write %",
	typescript = "prettier --write %",
	typescriptreact = "prettier --write %",
	json = "prettier --write %",
}

-- run foramtter on save
vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "*",
	callback = function()
		local ft = vim.bo.filetype
		local cmd = formatters_by_filetype[ft]
		if cmd then
			vim.cmd("silent! !" .. cmd)
			vim.cmd("edit")
		else
			vim.notify("No formatter configured for " .. ft, vim.log.levels.WARN)
		end
	end,
	desc = "Auto-format file before saving",
})
