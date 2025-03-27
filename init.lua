--->> Configuration 

-->Options Config
require ('config.options')

-->Keymaps Config
require('config.keymaps.keymaps')

-->Lazy Config
require('config.lazy')

-->LSP Config
require('lsp.lsp-config')


--->> UI

-->Mason UI
require('ui.mason-ui')

-->Lualine UI
require('ui.lualine-ui')


--->> Setups

-->Treesitter Config
require('config.nvim-treesitter-setup')

-->CMP Setup
require('config.nvim-cmp-setup')

-->Colorscheme
vim.cmd.colorscheme('abscs')



