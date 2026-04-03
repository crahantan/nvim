return {
	{
		"nvimtools/none-ls-extras.nvim",
		lazy = false,
		dependencies = { "nvimtools/none-ls.nvim" },
	},
	{
		"nvimtools/none-ls.nvim",
		lazy = false,
		dependencies = { "neovim/nvim-lspconfig" },
		config = function()
			require("lsp.lsp-config")
		end,
	},
}
