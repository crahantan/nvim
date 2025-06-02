return {
	{
		"yetone/avante.nvim",
		event = "VeryLazy",
		version = false, -- Never set this value to "*"! Never!
		opts = {
			-- add any opts here
			-- for example
			--Provideres OpenAI, Claude, Mini, Telescope, FZF, Copilot, etc.
			providers = {
				-- OpenAI
				openai = {
					endpoint = "https://api.openai.com/v1",
					model = "gpt-4o", -- GPT-4 Turbo
					timeout = 30000,
					extra_request_body = {
						temperature = 0,
						max_tokens = 8192,
					},
					-- Agrega tu API key aquí o mejor úsala como variable de entorno
				},
				-- Anthropic
				-- Puedes usar Claude 3 Sonnet o Claude 3.5 Sonnet
				-- Para más información visita https://docs.anthropic.com/claude/reference/models
				claude = {
					endpoint = "https://api.anthropic.com",
					model = "claude-3-5-sonnet-latest", -- Claude Sonnet 4
					timeout = 30000,
					extra_request_body = {
						temperature = 0,
						max_tokens = 8192,
					},
				},
			},
		},
		-- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
		build = "make",
		-- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"stevearc/dressing.nvim",
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			--- The below dependencies are optional,
			"echasnovski/mini.pick",      -- for file_selector provider mini.pick
			"nvim-telescope/telescope.nvim", -- for file_selector provider telescope
			"hrsh7th/nvim-cmp",           -- autocompletion for avante commands and mentions
			"ibhagwan/fzf-lua",           -- for file_selector provider fzf
			"nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
			"zbirenbaum/copilot.lua",     -- for providers='copilot'
			{
				-- support for image pasting
				"HakonHarnes/img-clip.nvim",
				event = "VeryLazy",
				opts = {
					-- recommended settings
					default = {
						embed_image_as_base64 = false,
						prompt_for_file_name = false,
						drag_and_drop = {
							insert_mode = true,
						},
						-- required for Windows users
						use_absolute_path = true,
					},
				},
			},
			{
				-- Make sure to set this up properly if you have lazy=true
				"MeanderingProgrammer/render-markdown.nvim",
				opts = {
					file_types = { "markdown", "Avante" },
				},
				ft = { "markdown", "Avante" },
			},
		},
	},
}
