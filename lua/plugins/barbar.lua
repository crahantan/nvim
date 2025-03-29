return {
  "romgrk/barbar.nvim",
  dependencies = {
    "lewis6991/gitsigns.nvim",  -- Soporte para Git
    "nvim-tree/nvim-web-devicons"  -- Iconos para las pestañas
  },
  init = function()
    vim.g.barbar_auto_setup = false -- Desactiva la configuración automática
  end,
  config = function()
    require("barbar").setup({
      animation = true, -- Animaciones al cambiar de pestaña
      auto_hide = false, -- No ocultar la barra cuando hay una sola pestaña
      tabpages = true, -- Habilitar soporte para pestañas de Neovim
      clickable = true, -- Cerrar buffers con clic
      icons = {
        buffer_index = true, -- Muestra el índice del buffer
        filetype = { enabled = true }, -- Muestra el icono del tipo de archivo
        separator = { left = "▎", right = "" }, -- Separadores personalizados
      },
    })
  end,
}

