return {
	'MeanderingProgrammer/render-markdown.nvim',
	dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
	opts = {
		heading = {
			-- Define los iconos para cada nivel de encabezado
			icons = { '󰲡 ', '󰲣 ', '󰲥 ', '󰲧 ', '󰲩 ', '󰲫 ' },
			-- Determina qué grupos de resaltado (highlight groups) usar
			-- Por defecto usa: RenderMarkdownH1, RenderMarkdownH2, etc.
			highlights = {
				'RenderMarkdownH1',
				'RenderMarkdownH2',
				'RenderMarkdownH3',
				'RenderMarkdownH4',
				'RenderMarkdownH5',
				'RenderMarkdownH6',
			},
		},
		code = {
			sign = false,
			width = 'block',
			right_pad = 1,
			-- Color de fondo para el bloque de código
			highlight = 'RenderMarkdownCode',
			-- Color para el lenguaje (ej: python, lua)
			highlight_language = 'RenderMarkdownCodeLanguage',
		},
		checkbox = {
			enabled = true,
			unchecked = { icon = '󰄱 ' },
			checked = { icon = ' ' },
			-- Colores para los estados de las checkboxes
			custom = {
				todo = { raw = '[-]', rendered = '󰥔 ', highlight = 'RenderMarkdownTodo' },
			},
		},
		pipe_table = {
			highlight = 'RenderMarkdownTableHead',
			head = 'RenderMarkdownTableHead',
			body = 'RenderMarkdownTableFill',
		},
		callout = {
			-- Configuración de colores para notas, advertencias, etc. (Estilo Obsidian)
			note = { raw = '[!NOTE]', rendered = '󰋽 Note', highlight = 'RenderMarkdownInfo' },
			tip = { raw = '[!TIP]', rendered = '󰌶 Tip', highlight = 'RenderMarkdownSuccess' },
			important = { raw = '[!IMPORTANT]', rendered = '󰅒 Important', highlight = 'RenderMarkdownHint' },
			warning = { raw = '[!WARNING]', rendered = '󰀦 Warning', highlight = 'RenderMarkdownWarn' },
			caution = { raw = '[!CAUTION]', rendered = '󰳦 Caution', highlight = 'RenderMarkdownError' },
		},
	},
}
