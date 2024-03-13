return {
  "nvim-treesitter/nvim-treesitter",
  name = "treesitter", 
  build = ":TSUpdate",
  config = function()
    local treesitter_configs = require("nvim-treesitter.configs")
    treesitter_configs.setup({
      ensure_installed = {"lua", "javascript"},
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
