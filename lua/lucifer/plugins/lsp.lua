return {
	"neovim/nvim-lspconfig",

	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
	},

	config = function()
		local lsp = require("lspconfig")
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = { "lua_ls", "clangd", "marksman", "gopls" },
			handlers = {
				["lua_ls"] = function()
					lsp.lua_ls.setup({
						settings = {
							completion = {
								callSnippet = "Replace",
							},
							diagnostics = {
								disable = { "missing-fields" },
							},
						},
					})
				end,
				["clangd"] = function()
					lsp.clangd.setup({})
				end,
				["marksman"] = function()
					lsp.marksman.setup({})
				end,
				["gopls"] = function()
					lsp.gopls.setup({})
				end,
			},
		})
		lsp.dartls.setup({
			root_dir = lsp.util.root_pattern("pubspec.yaml", "*.dart"),
			init_options = {
				onlyAnalyzeProjectsWithOpenFiles = true,
				suggestFromUnimportedLibraries = true,
				closingLabels = false,
				outline = false,
				flutterOutline = false,
			},
			settings = {
				dart = {
					completeFunctionCalls = true,
					showTodos = true,
					renameFilesWithClasses = "always",
					enableSnippets = true,
					updateImportsOnRename = true,
				},
			},
		})
	end,
}
