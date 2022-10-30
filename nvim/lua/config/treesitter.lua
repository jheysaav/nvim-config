require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"typescript",
		"rust",
		"toml",
		"go",
		"c",
		"cpp",
		"vue",
		"tsx",
		"css",
		"scss",
		"lua",
		"html",
	},
	highlight = { enable = true },
})
