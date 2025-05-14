return {
        "neovim/nvim-lspconfig",
	enabled = false, -- Change this to toggle the LSP
        dependencies = {
                "williamboman/mason.nvim",
                "williamboman/mason-lspconfig.nvim",
                "hrsh7th/cmp-nvim-lsp",
                "hrsh7th/cmp-buffer",
                "hrsh7th/cmp-path",
                "hrsh7th/nvim-cmp"
        },
        config = function()
                -- Local variables
                local cmp = require("cmp")
                local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()
                local lspconfig = require("lspconfig")

                -- Folding capabilities
                lsp_capabilities.textDocument.foldingRange = {
                        dynamicRegistration = false,
                        lineFoldingOnly = true
}

                -- LSP setup
                require("mason").setup()
                require("mason-lspconfig").setup({
                        ensure_installed = { "bashls", "lua_ls" },
                        handlers = {
                                function(server_name)
                                        lspconfig[server_name].setup({
                                                capabilities = lsp_capabilities
                                        })
                                end,
                                lua_ls = function()
                                        lspconfig.lua_ls.setup {
                                                settings = {
                                                        Lua = {
                                                                diagnostics = {
                                                                        globals = { "vim" }
                                                                }
                                                        }
                                                }
                                        }
                                end,
                        }
                })

                -- cmp setup
                local cmp_select = { behavior = cmp.SelectBehavior.Select }
                cmp.setup({
                        snippet = {
                                expand = function(args)
                                        vim.snippet.expand(args.body)
                                end,
                        },
                        mapping = cmp.mapping.preset.insert({
                                ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
                                ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
                                ["<C-y>"] = cmp.mapping.confirm({ select = true }),
                                ["<C-Space>"] = cmp.mapping.complete(),
                        }),
                        sources = cmp.config.sources(
                                {{ name = "nvim_lsp" }},
                                {{ name = "buffer" }},
                                {{ name = "path" }}
                        )
                })
        end
}
