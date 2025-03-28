-->Keymaps
vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')
vim.keymap.set('n', '<leader>q', '<cmd>quit<cr>')
vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle<cr>')
vim.keymap.set('n', '<leader>l', '<cmd>Lazy<cr>')
vim.keymap.set('n', '<leader>m', '<cmd>Mason<cr>')
vim.keymap.set('n', '<leader>t', '<cmd>terminal<cr>')
vim.keymap.set('n', '<leader>h', '<cmd>Neotree focus<cr>')
vim.keymap.set('i', '<Tab>', function() cmp.select_next_item() end, { noremap = true, silent = true })
vim.keymap.set('i', '<S-Tab>', function() cmp.select_prev_item() end, { noremap = true, silent = true })


