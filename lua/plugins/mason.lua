return {
	-- 1. El instalador base
	{ "williamboman/mason.nvim", config = true },

	-- 2. El puente (Aquí es donde pondremos la lógica para evitar el nil value)
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
			"neovim/nvim-lspconfig"
		},
		config = function()
			local mlsp = require("mason-lspconfig")
			local lspconfig = require("lspconfig")
			local mr = require("mason-registry")

			-- Lista de tus servidores
			local servers = {
				"ts_ls", "eslint", "prismals", "lua_ls", "clangd",
				"pyright", "bashls", "html", "jsonls",
				"marksman", "gopls", "tailwindcss", "dockerls",
				"docker_compose_language_service", "rust_analyzer",
			}

			-- Configuración del puente
			mlsp.setup({
				ensure_installed = servers,
				automatic_installation = true,
			})

			-- Herramientas extra (Prettier, etc.)
			local extra_tools = { "prettier", "prettierd", "eslint_d" }
			for _, tool in ipairs(extra_tools) do
				local p = mr.get_package(tool)
				if not p:is_installed() then p:install() end
			end
		end,
	},
}
