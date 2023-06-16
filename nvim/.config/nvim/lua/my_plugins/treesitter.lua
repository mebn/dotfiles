local treesitter = require("nvim-treesitter.configs")

treesitter.setup({
	-- enable syntax highlighting
	highlight = {
		enable = true,
	},
	-- enable indentation
	indent = { enable = true },
	auto_install = true,
})
