return {
  "nvim-tree/nvim-tree.lua",
  name = "nvimtree",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      view = {
        side = "right",
        width = 28
      }
    })

    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
  end,
}
