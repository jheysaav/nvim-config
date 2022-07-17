local lsp = require("lspconfig")
require("nvim-lsp-installer").setup({
	automatic_installation = true,
})

local servers = {
	rust_analyzer = {},
	asm_lsp = {},
	tsserver = {},
	denols = {},
	taplo = {},
	clangd = {},
	gopls = {},

	html = {},
	emmet_ls = {},
	cssls = {},
	volar = {},
	tailwindcss = {},

	jsonls = {},
	yamlls = {},
	pyright = {},
	ltex = {},
	sumneko_lua = {
		settings = {
			Lua = {
				diagnostics = {
					globals = { "vim" },
				},
			},
		},
	},
	dockerls = {},
}

local capabilities = require("cmp_nvim_lsp").update_capabilities(
	vim.lsp.protocol.make_client_capabilities()
)
local opts = { capabilities = capabilities }
for server, _ in pairs(servers) do
	opts = vim.tbl_deep_extend("force", opts, servers[server])
	lsp[server].setup(opts)
end

-- Diagnostic
local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config({
	virtual_text = {
		prefix = "▎",
	},
	update_in_insert = true,
})
