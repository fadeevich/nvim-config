local opts = { noremap = true }

vim.keymap.set('n', '<Esc>', '<Cmd>noh<CR>', opts)
vim.keymap.set('n', 'j', 'gj', opts)
vim.keymap.set('n', 'k', 'gk', opts)
vim.keymap.set('n', '<Space>pv', '<Cmd>Ex<CR>', opts)
