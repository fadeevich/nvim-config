return {
    'williamboman/mason.nvim',
    config = function()
        require('configs.mason')
    end,
    opts = {
        ensure_installed = {
            'codelldb',
            'mypy',
            'black',
        }
    }
}
