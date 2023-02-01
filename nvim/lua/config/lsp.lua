local lsp = require("lspconfig")
require("nvim-lsp-installer").setup({
	automatic_installation = true,
})

local servers = {
	rust_analyzer = {
		settings = {
			["rust-analyzer"] = {
				checkOnSave = {
					command = "clippy",
				},
			},
		},
	},
	denols = {
		root_dir = lsp.util.root_pattern("mod.ts", "deps.ts", "deno.json", "deno.jsonc", "import_map.json"),
	},
	tsserver = {
		single_file_support = false,
		root_dir = lsp.util.root_pattern("package.json"),
	},
	taplo = {},
	clangd = {},
	asm_lsp = {},

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

local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
local opts = { capabilities = capabilities }
for server, _ in pairs(servers) do
	opts = vim.tbl_deep_extend("force", opts, servers[server])
	lsp[server].setup(opts)
end

-- Diagnostic
vim.cmd([[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, scope="cursor"})]])

vim.diagnostic.config({
	virtual_text = false,
	update_in_insert = true,
})
