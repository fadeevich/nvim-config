return {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        require('configs.tokyonight')
        -- vim.cmd[[colorscheme tokyonight-night]]
        vim.cmd('colorscheme tokyonight-night')
    end,
}
