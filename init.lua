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

-->Colorscheme
vim.cmd([[colorscheme github_dark_default]])

vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
