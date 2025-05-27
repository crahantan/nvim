-- Define 'vim' as a global variable for linting purposes
_G.vim = vim

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
vim.cmd([[colorscheme github_dark]])
