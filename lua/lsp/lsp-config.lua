local lspconfig = require("lspconfig")

local mason_bin = "/home/crahantan/.local/share/nvim/mason/bin/"

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

-->Omnisharp
lspconfig.omnisharp.setup({
	cmd = { mason_bin .. "omnisharp" },
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
