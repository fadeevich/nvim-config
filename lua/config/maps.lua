local opts = { noremap = true }

vim.api.nvim_set_keymap('n', '<Esc>', '<Cmd>noh<CR>', opts)
vim.api.nvim_set_keymap('n', 'j', 'gj', opts)
vim.api.nvim_set_keymap('n', 'k', 'gk', opts)
vim.api.nvim_set_keymap('n', '<Space>pv', '<Cmd>Ex<CR>', opts)
