vim.pack.add({ 'https://github.com/nvim-lualine/lualine.nvim' })
require('lualine').setup({
    options = {
        theme = 'auto',
        section_separators = '',
        component_separators = '',
    },
})
