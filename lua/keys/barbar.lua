local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true}

map("n", "<tab>", "<cmd>BufferNext<cr>", opts)
map("n", "<s-tab>", "<cmd>BufferPrevious<cr>", opts)
map("n", "<leader>x", "<cmd>BufferClose<cr>", opts)
