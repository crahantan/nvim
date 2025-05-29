-->Keymaps
vim.g.mapleader = " "

-->Normal
vim.keymap.set("n", "<leader>w", "<cmd>write<cr>")
vim.keymap.set("n", "<leader>q", "<cmd>quit<cr>")
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>")
vim.keymap.set("n", "<leader>l", "<cmd>Lazy<cr>")
vim.keymap.set("n", "<leader>m", "<cmd>Mason<cr>")
vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm<cr>")
vim.keymap.set("n", "<leader>h", "<cmd>Neotree reveal<cr>")
vim.keymap.set("n", "<leader>bn", "<cmd>bnext<cr>")
vim.keymap.set("n", "<leader>bb", "<cmd>bprevious<cr>")
vim.keymap.set("n", "<leader>bd", "<cmd>bd<cr>")
vim.keymap.set("n", "<leader>p", "<cmd>Pineapple<cr>")
vim.keymap.set("n", "<leader>cc", "<cmd>Copilot panel<cr>")
vim.keymap.set("n", "<leader>k", "<C-w>l")
vim.keymap.set("n", "<leader>c", "<cmd>nohlsearch<cr>")
