return {
  "nvim-treesitter/nvim-treesitter",
  name = "treesitter",
  build = ":TSUpdate",
  config = function ()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
        ensure_installed = { "markdown", "c", "lua", "vim", "vimdoc", "javascript", "typescript", "html" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
  end
}
