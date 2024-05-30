return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
    require("bufferline").setup({})

    vim.keymap.set("n", "gp", ":bp<CR>")
    vim.keymap.set("n", "gn", ":bn<CR>")
  end,
}
