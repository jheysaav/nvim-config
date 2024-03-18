return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "hrsh7th/cmp-nvim-lsp", "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim" },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            automatic_installation = true,
        })

        local lsp = require("lspconfig")
        local servers = {
            -- Main languages
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

            -- Web development
            html = {},
            cssls = {},
            volar = {},
            eslint = {},
            emmet_ls = {},
            marksman = {},
            tailwindcss = {},

            -- Scripting
            pyright = {},
            lua_ls = {
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" },
                        },
                    },
                },
            },
            jsonls = {},
            yamlls = {},
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
    end
}
