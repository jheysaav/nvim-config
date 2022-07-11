local cmp = require("cmp")
local lspkind = require("lspkind")

cmp.setup({
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	mapping = {
		["<C-Space>"] = cmp.mapping.complete(),
		["<Esc>"] = cmp.mapping.abort(),
		["<Down>"] = cmp.mapping.select_next_item(),
		["<Up>"] = cmp.mapping.select_prev_item(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	},
	formatting = {
		format = lspkind.cmp_format({
			menu = {
				nvim_lsp = "[LSP]",
				luasnip = "[SNIP]",
				path = "[PATH]",
				buffer = "[BUF]",
			},
		}),
	},
	sources = {
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "path" },
		{ name = "buffer" },
	},
})
