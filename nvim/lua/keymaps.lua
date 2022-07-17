local telescope_builtin = require("telescope.builtin")

local maps = {
	-- Basic
	["<leader>w"] = function()
		vim.cmd([[w]])
	end,
	["<leader>ww"] = function()
		vim.cmd([[w!]])
	end,
	["<leader>q"] = function()
		vim.cmd([[q]])
	end,
	["<leader>qq"] = function()
		vim.cmd([[q!]])
	end,

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

	-- Buffers
	["<C-q>"] = function()
		vim.cmd([[bdelete]])
	end,
	["C-Tab"] = function()
		vim.cmd([[bnext]])
	end,
}

vim.g.mapleader = " "

for k, v in pairs(maps) do
	vim.keymap.set("n", k, v, { silent = true, noremap = true })
end
