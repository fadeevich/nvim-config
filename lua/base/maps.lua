local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.keymap.set(mode, lhs, rhs, options)
end

map('n', '<esc>', '<cmd>noh<cr>')
map('n', 'j', 'gj')
map('n', 'k', 'gk')
