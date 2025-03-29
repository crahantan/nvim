return{
	{
  	"nvim-neo-tree/neo-tree.nvim",
  	branch = "v3.x",
  	dependencies = {
    	"nvim-lua/plenary.nvim",
    	"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    	"MunifTanjim/nui.nvim",
    	-- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  	},
  	lazy = false, -- neo-tree will lazily load itself
  	---@module "neo-tree"
  	---@type neotree.Config?
 		opts = {
      filesystem = {
        follow_current_file = enabled, -- Seguir el archivo activo
      },
      window = {
        position = "left", -- Habilitar ventana flotante
        width = 40, -- Ajusta el ancho de la ventana flotante
      },
		}
	}
}

