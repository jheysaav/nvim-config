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
	sumneko_lua = {},
	dockerls = {},
}

for server, _ in pairs(servers) do
	lsp[server].setup(servers[server])
end
