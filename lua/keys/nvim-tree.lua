local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true}

map('n', '<C-n>', '<Cmd>NvimTreeToggle<CR>', opts)
