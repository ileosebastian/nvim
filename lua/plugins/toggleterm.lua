return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = { --[[ things you want to change go here]]
		},
		config = function()
			require("toggleterm").setup({})

			local set_keymap = vim.keymap.set

			set_keymap("n", [[<c-\>]], ":ToggleTerm<CR>")

			function _G.set_terminal_keymaps()
				local opts = { buffer = 0 }
				set_keymap("t", "<esc>", [[<C-\><C-n>]], opts)
				set_keymap("t", "jj", [[<C-\><C-n>]], opts)
				set_keymap("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
				set_keymap("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
				set_keymap("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
				set_keymap("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
				set_keymap("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
			end

			-- if you only want these mappings for toggle term use term://*toggleterm#* instead
			vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
		end,
	},
}
