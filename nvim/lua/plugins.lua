local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local packer_bootstrap = nil
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	packer_bootstrap = vim.fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
end

return require("packer").startup({
	function(use)
		use("wbthomason/packer.nvim")

		-- Speed
		use("nathom/filetype.nvim")
		use("lewis6991/impatient.nvim")

		-- Completion tools
		use("github/copilot.vim")
		use("neovim/nvim-lspconfig")
		use("williamboman/nvim-lsp-installer")
		use("hrsh7th/nvim-cmp")
		use("hrsh7th/cmp-path")
		use("Saecki/crates.nvim")
		use("hrsh7th/cmp-buffer")
		use("hrsh7th/cmp-nvim-lsp")

		-- Snippets
		use("L3MON4D3/LuaSnip")
		use("saadparwaiz1/cmp_luasnip")

		-- Files
		use("kyazdani42/nvim-tree.lua")
		use("nvim-telescope/telescope.nvim")

		-- Colours & icons
		use({
			"nvim-treesitter/nvim-treesitter",
			run = ":TSUpdate",
		})
		use("onsails/lspkind.nvim")
		use("projekt0n/github-nvim-theme")
		use("kyazdani42/nvim-web-devicons")

		-- Utils
		use("nvim-lua/plenary.nvim")
		use("windwp/nvim-autopairs")
		use("lewis6991/gitsigns.nvim")
		use("akinsho/bufferline.nvim")
		use("nvim-lualine/lualine.nvim")
		use("gpanders/editorconfig.nvim")
		use("lukas-reineke/indent-blankline.nvim")

		if packer_bootstrap then
			require("packer").sync()
		end
	end,

	config = {
		git = {
			clone_timeout = "300",
		},
	},
})
