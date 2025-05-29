local lspconfig = require("lspconfig")
local null_ls = require("null-ls")
local mason_bin = "/Users/blacknorange/.local/share/nvim/mason/bin/"
local brew_bin = "/opt/homebrew/bin/"

-- Registrar una fuente manual básica
local eslint_d_fmt = null_ls.register(null_ls.builtins.formatting.prettier.with({
	filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
	command = "eslint_d",
	args = { "--fix-to-stdout", "--stdin", "--stdin-filename", "$FILENAME" },
}))

-- Registrar una fuente manual completa
local eslint_source = {
	name = "eslint_d_manual",
	method = null_ls.methods.FORMATTING,
	filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
	generator = {
		fn = function(params)
			return {
				{
					event = "start",
					command = "eslint_d",
					args = { "--fix-to-stdout", "--stdin", "--stdin-filename", params.bufname },
					to_stdin = params.content,
				},
			}
		end,
	},
}

-->null_ls config
null_ls.setup({
	sourcer = {
		eslint_d_fmt,
		eslint_source,
	},
	-- Configuración adicional si la necesitas
	debug = true,
})

-->Lua_ls
lspconfig.lua_ls.setup({
	settings = {},
})

-->clangd
lspconfig.clangd.setup({
	settings = {},
})

-->eslint
lspconfig.eslint.setup({
	flags = {
		allow_incremental_sync = false,
		debounce_text_changes = 1000,
	},
	settings = {
		eslint = {
			packageManager = "yarn",
			autoFixOnSave = true,
			codeActionOnSave = {
				enable = true,
				mode = "all",
			},
			format = true,
			workingDirectory = { mode = "auto" },
		},
	},
})

-->Tsserver
lspconfig.ts_ls.setup({
	settings = {},
})


-->Pyright
lspconfig.pyright.setup({
	settings = {},
})

-->Bashl
lspconfig.bashls.setup({
	settings = {},
})

-->Prisma
lspconfig.prismals.setup({
	cmd = { "prisma-language-server", "--stdio" },
	filetypes = { "prisma" },
	root_dir = require("lspconfig").util.root_pattern("*.prisma", ".git"),
	settings = {
		prisma = {
			prismaFmtBinPath = "prisma-fmt",
		},
	},
	on_attach = function(client, bufnr)
		-- Habilitar el resaltado de sintaxis
		vim.api.nvim_buf_set_option(bufnr, "syntax", "enable")
	end,
})

-->csharp-ls
lspconfig.csharp_ls.setup({
	settings = {}
})
