local null_ls = require("null-ls")

-- Registrar una fuente manual básica
local eslint_d_fmt = null_ls.register(null_ls.builtins.formatting.prettier.with({
	filetypes = {
		"javascript",
		"javascriptreact",
		"javascript.jsx",
		"typescript",
		"typescriptreact",
		"typescript.tsx",
		"vue",
		"svelte",
		"astro"
	},
	command = "eslint_d",
	args = { "--fix-to-stdout", "--stdin", "--stdin-filename", "$FILENAME" },
}))

-- Registrar una fuente manual completa
local eslint_source = {
	name = "eslint_d_manual",
	method = null_ls.methods.FORMATTING,
	filetypes = {
		"javascript",
		"javascriptreact",
		"javascript.jsx",
		"typescript",
		"typescriptreact",
		"typescript.tsx",
		"vue",
		"svelte",
		"astro"
	},
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
	sources = {
		eslint_d_fmt,
		eslint_source,
	},
	-- Configuración adicional si la necesitas
	debug = true,
})

-- LUA LS
vim.lsp.config("lua_ls", {
	settings = {},
})

-- CLANGD
vim.lsp.config("clangd", {
	settings = {},
})

-- ESLINT
vim.lsp.config("eslint", {
	filetypes = {
		"javascript",
		"javascriptreact",
		"javascript.jsx",
		"typescript",
		"typescriptreact",
		"typescript.tsx",
		"vue",
		"svelte",
		"astro"
	},
	flags = {
		allow_incremental_sync = false,
		debounce_text_changes = 1000,
	},
	settings = {
		eslint = {
			packageManager = "npm",
			autoFixOnSave = true,
			codeActionOnSave = {
				enable = true,
				mode = "all",
			},
			format = true,
			formatOnSave = true,
			workingDirectory = { mode = "auto" },
		},
	},
})

-- TS SERVER
vim.lsp.config("ts_ls", {
	settings = {},
})

-- PYRIGHT
vim.lsp.config("pyright", {
	settings = {},
})

-- BASH LS
vim.lsp.config("bashls", {
	settings = {},
})

-- PRISMA
vim.lsp.config("prismals", {
	cmd = { "prisma-language-server", "--stdio" },
	filetypes = { "prisma" },
	root_dir = vim.fs.dirname(vim.fs.find({ "schema.prisma", "package.json", ".git" }, { upward = true })[1]),
	settings = {
		prisma = {
			prismaFmtBinPath = "prisma-fmt",
		},
	},
})

-- CSHARP LS
vim.lsp.config("csharp_ls", {
	settings = {},
})

-- HTML
vim.lsp.config("html", {
	settings = {},
})

-- JSON
vim.lsp.config("jsonls", {
	settings = {},
})

-- MARKSMAN
vim.lsp.config("marksman", {
	settings = {},
})

-- mdfomat
vim.lsp.config("mdfomat", {
	settings = {},
})

-- GOPLS
vim.lsp.config("gopls", {
	settings = {}
})

-- TAILWINDCSS
vim.lsp.config("tailwindcss", {
	settings = {},
})


-- Habilitamos todos los servidores:
local servers = {
	"lua_ls",
	"clangd",
	"eslint",
	"ts_ls",
	"pyright",
	"bashls",
	"prismals",
	"csharp_ls",
	"html",
	"jsonls",
	"marksman",
	"mdfomat",
	"gopls",
	"tailwindcss",
}

for _, server in ipairs(servers) do
	vim.lsp.enable(server)
end
