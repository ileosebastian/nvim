return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim"
    },
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,

                -- null_ls.builtins.completion.spell,
                -- require("none-ls.diagnostics.eslint"), -- requires none-ls-extras.nvim

                null_ls.builtins.formatting.csharpier,
                -- null_ls.builtins.formatting.rustfmt,

                -- null_ls.builtins.formatting["google-java-format"],

                -- require("none-ls.formatting.google-java-format"),
                -- require("none-ls.diagnostics.checkstyle"),
                null_ls.builtins.diagnostics["checkstyle"],


                -- null_ls.builtins.formatting.prettierd,
                -- require("none-ls.diagnostics.eslint_d"),
                null_ls.builtins.formatting.biome.with({}),
            },
        })

        vim.keymap.set("n", "<leader>F", vim.lsp.buf.format, {})
    end,
}
