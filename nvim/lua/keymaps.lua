local telescope_builtin = require("telescope.builtin")

local maps = {
	-- Telescope
	["<leader>ff"] = telescope_builtin.find_files,

	-- Tree
	["<leader>n"] = function()
		vim.cmd([[NvimTreeToggle]])
	end,
	["<leader>nr"] = function()
		vim.cmd([[NvimTreeRefresh]])
	end,

	-- Movements
	["<C-left>"] = function()
		vim.cmd([[wincmd h]])
	end,
	["<C-right>"] = function()
		vim.cmd([[wincmd l]])
	end,
	["<C-up>"] = function()
		vim.cmd([[wincmd k]])
	end,
	["<C-down>"] = function()
		vim.cmd([[wincmd j]])
	end,

	-- Speed
	["j"] = "<Plug>(faster_move_gj)",
	["k"] = "<Plug>(faster_move_gk)",
	["<down>"] = "<Plug>(faster_move_gj)",
	["<up>"] = "<Plug>(faster_move_gk)",
}

vim.g.mapleader = " "

for k, v in pairs(maps) do
	vim.keymap.set("n", k, v, { silent = true, noremap = true })
end
