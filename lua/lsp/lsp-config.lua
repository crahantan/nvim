local lspconfig =	require('lspconfig')

-->Lua_ls
lspconfig.lua_ls.setup {
	settings = {

	}
}

-->clangd
lspconfig.clangd.setup {
	settings = {
	}
}

-->eslint
lspconfig.eslint.setup {
	flags = {
    allow_incremental_sync = false,
    debounce_text_changes = 1000,
  },
}

-->Tsserver
lspconfig.ts_ls.setup{
	settings = {
	}
}





