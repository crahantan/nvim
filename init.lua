-- Define 'vim' as a global variable for linting purposes
_G.vim = vim

-- Neovim Configuration File




--->> Configuration
-->Options Config
require("core.options")

-->Keymaps Config
require("core.keymaps")

-->Lazy Config
require("core.lazy")

-->LSP Config
require("lsp.lsp-config")

--->> UI

-->Mason UI
require("ui.mason-ui")

-->Lualine UI
require("ui.lualine-ui")

-->Pineapple themes
require("ui.pineapple_themes")

-->Diagnosticos
require("functions.show-diagnostics")

-->Colorscheme
vim.cmd([[colorscheme vscode]])

--> MD render colors
local function set_markdown_colors()
	local colors = {
		h1 = '#ff6c6b',    -- Rojo suave
		h2 = '#da85ef',    -- Púrpura
		h3 = '#98be65',    -- Verde
		h4 = '#51afef',    -- Azul
		h5 = '#ecbe7b',    -- Amarillo
		h6 = '#46d9ff',    -- Cian
		bg_code = '#1e222a', -- Fondo oscuro para código
		bg_table = '#282c34',
	}

	-- Encabezados
	vim.api.nvim_set_hl(0, 'RenderMarkdownH1', { fg = colors.h1, bold = true })
	vim.api.nvim_set_hl(0, 'RenderMarkdownH2', { fg = colors.h2, bold = true })
	vim.api.nvim_set_hl(0, 'RenderMarkdownH3', { fg = colors.h3, bold = true })
	vim.api.nvim_set_hl(0, 'RenderMarkdownH4', { fg = colors.h4, bold = true })
	vim.api.nvim_set_hl(0, 'RenderMarkdownH5', { fg = colors.h5, bold = true })
	vim.api.nvim_set_hl(0, 'RenderMarkdownH6', { fg = colors.h6, bold = true })

	-- Bloques de código
	vim.api.nvim_set_hl(0, 'RenderMarkdownCode', { bg = colors.bg_code })
	vim.api.nvim_set_hl(0, 'RenderMarkdownCodeLanguage', { fg = colors.h4, italic = true })

	-- Tablas
	vim.api.nvim_set_hl(0, 'RenderMarkdownTableHead', { fg = colors.h4 })
	vim.api.nvim_set_hl(0, 'RenderMarkdownTableFill', { fg = '#abb2bf' })

	-- Callouts (Colores de estado)
	vim.api.nvim_set_hl(0, 'RenderMarkdownInfo', { fg = '#51afef' })
	vim.api.nvim_set_hl(0, 'RenderMarkdownSuccess', { fg = '#98be65' })
	vim.api.nvim_set_hl(0, 'RenderMarkdownWarn', { fg = '#ecbe7b' })
	vim.api.nvim_set_hl(0, 'RenderMarkdownError', { fg = '#ff6c6b' })
end

-- Ejecutar la función
set_markdown_colors()
