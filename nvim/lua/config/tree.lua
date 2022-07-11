require("nvim-tree").setup({
	disable_netrw = true,
	hijack_netrw = true,
	update_cwd = true,

	filters = {
		dotfiles = false,
		custom = { ".git" },
	},
})
