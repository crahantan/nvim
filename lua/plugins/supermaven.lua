return {
	"supermaven-inc/supermaven-nvim",
	config = function()
		require("supermaven-nvim").setup({
			keymaps = {
				accept_suggestion = "<S-j>",
				clear_suggestion = "<C-]>",
				accept_word = "<C-j>",
			},
			ignore_filetypes = { "cpp", "markdown" },
			color = {
				suggestion_color = "#808080", -- Gris claro para que no distraiga
				cterm = 244,
			},
		})
	end,
}
