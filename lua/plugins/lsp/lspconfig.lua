local languages = {
    "lua_ls",
    "tsserver",
}

return {
    "neovim/nvim-lspconfig",
    opts = {
        servers = {
            tsserver = {
                on_attach = function(client)
                    -- this is important, otherwise tsserver will format ts/js
                    -- files which we *really* don't want.
                    client.server_capabilities.documentFormattingProvider = false
                end,
            }
        }
    },
    config = function()
        local lspconfig = require("lspconfig")
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        lspconfig["lua_ls"].setup({
            capabilities = capabilities,
        })

        lspconfig["tsserver"].setup({
            capabilities = capabilities,
        })
        -- lspconfig["biome"].setup({
        --     capabilities = capabilities
        -- })
        lspconfig["angularls"].setup({
            capabilities = capabilities
        })

        lspconfig["csharp_ls"].setup({
            capabilities = capabilities,
        })

        lspconfig["jdtls"].setup({
            capabilities = capabilities,
        })

        lspconfig["pylsp"].setup({
            capabilities = capabilities,
        })

        lspconfig["html"].setup({
            capabilities = capabilities,
        })

        lspconfig["cssls"].setup({
            capabilities = capabilities,
        })

        lspconfig["emmet_language_server"].setup({
            capabilities = capabilities,
            filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "pug", "typescriptreact" },
            -- Read more about this options in the [vscode docs](https://code.visualstudio.com/docs/editor/emmet#_emmet-configuration).
            -- **Note:** only the options listed in the table are supported.
            init_options = {
                ---@type table<string, string>
                includeLanguages = {},
                --- @type string[]
                excludeLanguages = {},
                --- @type string[]
                extensionsPath = {},
                --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/preferences/)
                preferences = {},
                --- @type boolean Defaults to `true`
                showAbbreviationSuggestions = true,
                --- @type "always" | "never" Defaults to `"always"`
                showExpandedAbbreviation = "always",
                --- @type boolean Defaults to `false`
                showSuggestionsAsSnippets = false,
                --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/syntax-profiles/)
                syntaxProfiles = {},
                --- @type table<string, string> [Emmet Docs](https://docs.emmet.io/customization/snippets/#variables)
                variables = {},
            },
        })

        vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
        vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
}
