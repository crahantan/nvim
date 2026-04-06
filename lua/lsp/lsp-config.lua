local none_ls = require("null-ls")
local eslint_formatting = require("none-ls.formatting.eslint")
local eslint_diagnostics = require("none-ls.diagnostics.eslint")
local prettier_formatting = none_ls.builtins.formatting.prettierd
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-->none-ls config
local eslint_condition = function(utils)
	return utils.root_has_file(
		"eslint.config.js",
		"eslint.config.ts",
		".eslintrc.json",
		".eslintrc.js",
		".eslintrc.ts",
		".eslintrc.cjs",
		".eslintrc.yaml",
		".eslintrc.yml"
	)
end

none_ls.setup({
	root_dir = require("null-ls.utils").root_pattern(
		"eslint.config.js",
		"eslint.config.ts",
		"turbo.json",
		"pnpm-workspace.yaml",
		"package.json",
		"tsconfig.json",
		".git"
	),
	sources = {
		prettier_formatting.with({
			filetypes = {
				"javascript",
				"javascriptreact",
				"javascript.jsx",
				"typescript",
				"typescriptreact",
				"typescript.tsx",
				"vue",
				"svelte",
				"astro",
				"json",
				"yaml",
				"prisma",
				"markdown",
			},
		}),
		eslint_formatting.with({
			condition = eslint_condition,
			env = {
				ESLINT_USE_FLAT_CONFIG = "true",
			},
		}),
		eslint_diagnostics.with({
			condition = eslint_condition,
			env = {
				ESLINT_USE_FLAT_CONFIG = "true",
			},
		}),
	},
	on_attach = function(client, bufnr)
		local ts_running = false
		for _, c in ipairs(vim.lsp.get_clients({ bufnr = bufnr })) do
			if c.name == "ts_ls" then
				ts_running = true
				break
			end
		end
		if not ts_running then
			vim.lsp.start({
				name = "ts_ls",
				cmd = { "typescript-language-server", "--stdio" },
				root_dir = vim.fn.getcwd(),
				on_attach = function(client, bufnr)
					if client.name == "ts_ls" then
						client.server_capabilities.documentFormattingProvider = false
						client.server_capabilities.documentRangeFormattingProvider = false
					end
				end,
				settings = {
					typescript = {
						inlayHints = {
							includeInlayParameterNameHints = "all",
							includeInlayReturnTypeHints = true,
						},
					},
					javascript = {
						inlayHints = {
							includeInlayParameterNameHints = "all",
						},
					},
				},
			})
		end
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ buffer = bufnr, group = augroup })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({ bufnr = bufnr, async = false })
				end,
			})
		end
	end,
})

vim.lsp.config("ts_ls", {
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = {
		"typescript",
		"typescriptreact",
		"typescript.tsx",
		"javascript",
		"javascriptreact",
		"javascript.jsx",
	},
	settings = {
		typescript = {
			inlayHints = {
				includeInlayParameterNameHints = "all",
				includeInlayReturnTypeHints = true,
			},
		},
		javascript = {
			inlayHints = {
				includeInlayParameterNameHints = "all",
			},
		},
	},
	root_dir = function(fname)
		return vim.fs.root(fname, {
			"tsconfig.json",
			"jsconfig.json",
			"package.json",
			"turbo.json",
		})
	end,
})

vim.lsp.config("prismals", {
	settings = {
		prisma = { prismaFmtBinPath = "prisma-fmt" },
	},
})

vim.lsp.config("tailwindcss", {
	settings = {
		tailwindCSS = {
			experimental = {
				classRegex = {
					{ "cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" }, -- cva()
					{ "cx\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" }, -- cx()
					{ "cn\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" }, -- cn()
				},
			},
		},
	},
})

local servers = {
	"ts_ls",
	"eslint",
	"prismals",
	"lua_ls",
	"clangd",
	"pyright",
	"bashls",
	"csharp_ls",
	"html",
	"jsonls",
	"marksman",
	"gopls",
	"tailwindcss",
	"dockerls",
	"docker_compose_language_service",
}

for _, server in ipairs(servers) do
	vim.lsp.enable(server)
end
