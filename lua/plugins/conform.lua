return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				bash = { "beautysh" },
				lua = { "stylua" },
				-- Conform will run multiple formatters sequentially
				python = { "isort", "black" },
				-- You can customize some of the format options for the filetype (:help conform.format)
				rust = { "rustfmt", lsp_format = "fallback" },
				-- Conform will run the first available formatter
				javascript = { "prettierd", "prettier", stop_after_first = true },
				cs = {
					-- "lsp_format" le dice a conform que use cualquier LSP adjunto que soporte formato
					-- Conform automáticamente detectará Omnisharp si está adjunto y lo usará
					"lsp_format",
					-- Puedes agregar formatters de fallback aquí si tuvieras otros (ej: dotnet-format)
					-- { "dotnet-format" }
				},
				csx = { "lsp_format" }, -- También para archivos csx
			},

			-- Conform puede formatear automáticamente al guardar
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		},
	},
}
