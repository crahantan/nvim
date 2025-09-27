--Vim Options
vim.opt.number = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = false
vim.g.mapleader = " "
vim.opt.termguicolors = true

-- Configuración de transparencia
vim.opt.winblend = 0.9             -- Transparencia para ventanas flotantes
vim.opt.pumblend = 0.9             -- Transparencia para el menú popup
vim.g.neovide_transparency = 0.9 -- Para Neovide (cliente GUI)

--Format on save omnisharp_format_on_save
vim.g.omnisharp_format_on_save = 1

--Avante
-- views can only be fully collapsed with the global statusline
vim.opt.laststatus = 3

--Eslint_d
vim.cmd([[autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx lua vim.lsp.buf.format({async = false})]])

-->Conform
vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"

-->Highlight
-->add for new FileTypes
vim.api.nvim_create_autocmd("FileType", {
	pattern = "prisma",
	callback = function()
		vim.cmd("TSBufEnable highlight")
	end,
})
