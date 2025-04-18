return {
	{
		"catppuccin/nvim",
		name = "cat",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				term_colors = true,
				no_italic = false,
				integrations = {
					harpoon = true,
					blink_cmp = true,
				},
			})
			-- vim.cmd([[colorscheme catppuccin]])
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		config = function()
			vim.cmd([[colorscheme kanagawa-dragon]])
		end,
	},
}
