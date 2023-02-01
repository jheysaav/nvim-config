require("nvim-tree").setup({
	disable_netrw = true,
	filters = { custom = { "^.git$" } },
	actions = {
		open_file = {
			quit_on_open = true,
		},
	},
})

vim.api.nvim_create_autocmd("BufEnter", {
	nested = true,
	callback = function()
		if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
			vim.cmd("quit")
		end
	end,
})
