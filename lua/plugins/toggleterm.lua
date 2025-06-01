return {
	-- amongst your other plugins
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = true,
		opts = {
			opacity = 0.7,
			size = 20,
			open_mapping = [[<c-\>]],
			direction = "horizontal",
			float_opts = { border = "curved" },
			highlights = { FloatBorder = { link = "Normal" }, NormalFloat = { link = "Normal" } },
		},
	},
	-- or
	--{'akinsho/toggleterm.nvim', version = "*", opts = {--[[ things you want to change go here]]}}
}
