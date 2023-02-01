require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"typescript",
		"javascript",
		"rust",
		"toml",
		"c",
		"cpp",
		"vue",
		"tsx",
		"css",
		"scss",
		"lua",
		"html",
		"json",
	},
	highlight = { enable = true },
	additional_vim_regex_highlighting = false,
})
