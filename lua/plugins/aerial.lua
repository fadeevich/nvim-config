return {
    'stevearc/aerial.nvim',
    opts = {},
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        require('configs.aerial')
    end,
}
