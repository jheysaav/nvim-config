local lsp = require("lspconfig")
require("nvim-lsp-installer").setup({
	automatic_installation = true,
})

local servers = {
	rust_analyzer = {},
	denols = {
		root_dir = lsp.util.root_pattern(
			"mod.ts",
			"deps.ts",
			"deno.json",
			"deno.jsonc",
			"import_map.json"
		),
		init_options = {
			enable = true,
			unstable = true,
		},
	},
	tsserver = {
		root_dir = lsp.util.root_pattern("package.json", "tsconfig.json"),
	},
	taplo = {},
	gopls = {},
	clangd = {},
	asm_lsp = {},

	html = {},
	volar = {},
	cssls = {},
	eslint = {},
	emmet_ls = {},
	tailwindcss = {},

	ltex = {},
	jsonls = {},
	yamlls = {},
	pyright = {},
	dockerls = {},
	sumneko_lua = {
		settings = {
			Lua = {
				diagnostics = {
					globals = { "vim" },
				},
			},
		},
	},
}

local capabilities = require("cmp_nvim_lsp").default_capabilities(
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

vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, scope="cursor"})]]

vim.diagnostic.config({
	virtual_text = false,
	update_in_insert = true,
})
