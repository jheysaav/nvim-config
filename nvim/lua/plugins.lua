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
		use("hrsh7th/cmp-buffer")
		use("hrsh7th/cmp-nvim-lsp")
		use("tamago324/nlsp-settings.nvim")

		-- Snippets
		use("L3MON4D3/LuaSnip")
		use("saadparwaiz1/cmp_luasnip")

		-- Files
		use("kyazdani42/nvim-tree.lua")
		use("nvim-telescope/telescope.nvim")

		-- Colors & icons
		use("navarasu/onedark.nvim")
		use({
			"nvim-treesitter/nvim-treesitter",
			run = ":TSUpdate",
		})
		use("onsails/lspkind.nvim")
		use("mortepau/codicons.nvim")
		use("kyazdani42/nvim-web-devicons")

		-- Utils
		use("nvim-lua/plenary.nvim")
		use("windwp/nvim-autopairs")
		use("lewis6991/gitsigns.nvim")
		use("akinsho/bufferline.nvim")
		use("nvim-lualine/lualine.nvim")
		use("norcalli/nvim-colorizer.lua")
		use("antoinemadec/FixCursorHold.nvim")
		use("lukas-reineke/indent-blankline.nvim")
		use({
			"rcarriga/nvim-notify",
			config = function()
				vim.notify = require("notify")
			end,
		})
	end,

	config = {
		git = {
			clone_timeout = "300",
		},
	},
})
