local telescope_builtin = require("telescope.builtin")
local crates = require("crates")

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
	["<leader>bd"] = function()
		vim.cmd([[bdelete]])
	end,
	["<leader><Tab>"] = function()
		vim.cmd([[bnext]])
	end,

	-- Lsp
	["<leader>d"] = vim.lsp.buf.definition,
	["<leader>D"] = vim.lsp.buf.declaration,
	["<leader>i"] = vim.lsp.buf.implementation,
	["<leader>f"] = function()
		vim.lsp.buf.format({ async = true })
	end,

	-- Crates
	["<leader>cu"] = crates.update_crate,
	["<leader>ca"] = crates.update_all_crates,
	["<leader>cU"] = crates.upgrade_crate,
	["<leader>cA"] = crates.upgrade_all_crates,
}

vim.g.mapleader = " "

for k, v in pairs(maps) do
	vim.keymap.set("n", k, v, { silent = true, noremap = true })
end
