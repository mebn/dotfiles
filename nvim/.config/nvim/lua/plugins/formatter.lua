local should_format = true
-- local should_format = false

local formatters_by_filetype = {
	rust = 'rustfmt "%:p"',
	go = 'gofmt -w "%:p"',
	lua = 'stylua "%:p"',
	python = 'black "%:p"',

	-- prettier
	css = 'prettier --write "%:p"',
	html = 'prettier --write "%:p"',
	javascript = 'prettier --write "%:p"',
	javascriptreact = 'prettier --write "%:p"',
	markdown = 'prettier --write "%:p"',
	typescript = 'prettier --write "%:p"',
	typescriptreact = 'prettier --write "%:p"',
	json = 'prettier --write "%:p"',
}

-- run formatter on save
vim.api.nvim_create_autocmd("BufWritePost", {
	desc = "Auto-format file before saving",
	pattern = "*",
	callback = function()
		if not should_format then
			return
		end

		local ft = vim.bo.filetype
		local cmd = formatters_by_filetype[ft]
		if cmd then
			vim.cmd("silent! !" .. cmd)
			vim.cmd("edit")
		end
	end,
})
