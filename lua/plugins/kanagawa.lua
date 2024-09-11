return {
	"rebelot/kanagawa.nvim",

	config = function()
		-- vim.cmd.colorscheme("kanagawa-dragon")

		local kanagawa = require("kanagawa")

		kanagawa.setup({

			keywordStyle = { italic = true },
			statementStyle = { bold = true },

			colors = {
				palette = {
					sumiInk1 = "#000000",
				},
				theme = {
					all = {
						ui = {
							bg_dim = "black",

                            bg = "black",
							bg_m3 = "black",
							bg_m2 = "black",
							bg_m1 = "black",
							bg_p1 = "black",
							bg_p2 = "black",

							float = {
								bg = "black",
							},
						},
					},
				},
			},
		})
	end,
}
