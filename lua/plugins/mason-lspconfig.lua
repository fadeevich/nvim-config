return {
    'williamboman/mason-lspconfig.nvim',
    opts = {
        ensure_installed = {
            'lua_ls',
            'clangd',
            'cmake',
            'tinymist',
            'zls',
            'rust_analyzer',
        },
    },
}
