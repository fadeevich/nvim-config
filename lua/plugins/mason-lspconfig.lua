return {
    'williamboman/mason-lspconfig.nvim',
    requires = {
        'neovim/nvim-lspconfig',
        'williamboman/mason.nvim',
    },
    config = function()
        require('configs.mason-lspconfig')
    end,
}
