return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    keys = {
        { '<leader>ff', '<cmd>Telescope find_files<cr>' },
        { '<leader>fg', '<cmd>Telescope live_grep<cr>' },
        { '<leader>fb', '<cmd>Telescope buffers<cr>' },
        { '<leader>fh', '<cmd>Telescope help_tags<cr>' },
    },
    opts = {
        pickers = {
            find_files = {
                find_command = { 'rg', '--files', '--hidden', '--no-ignore-vcs' },
            },
        },
    },
}
