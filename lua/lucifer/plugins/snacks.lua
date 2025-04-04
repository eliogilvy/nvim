return {
	"folke/snacks.nvim",
	opts = {
		input = {},
		lazygit = {},
		styles = {
			input = {
				bo = {
					filetype = "input",
				},
				row = function()
					return vim.o.lines / 2 - 5
				end,
			},
		},
	},
	keys = {
		{
			"<leader>lg",
			function()
				require("snacks").lazygit.open()
			end,
			desc = "Open LazyGit",
		},
	},
}
