return {
    'williamboman/mason-lspconfig.nvim',
    opts = {
        ensure_installed = {
            'lua_ls',
            'clangd',
            'asm_lsp',
            'cmake',
            'tinymist',
            'zls',
        },
    },
}
