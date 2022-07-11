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

	-- -- Movements
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
}

vim.g.mapleader = " "

for k, v in pairs(maps) do
	vim.keymap.set("n", k, v)
end
