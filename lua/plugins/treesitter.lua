return {
  "nvim-treesitter/nvim-treesitter",
  name = "treesitter",
  build = ":TSUpdate",
  config = function ()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
        ensure_installed = { "markdown", "markdown_inline", "c", "lua", "vim", "vimdoc", "javascript", "typescript", "html" },
        auto_install = true,
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
  end
}
