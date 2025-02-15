require('mason-lspconfig').setup({
    ensure_installed = {
        'lua_ls',
        'rust_analyzer',
        'asm_lsp',
        'clangd',
        'somesass_ls',
        'mesonlsp',
        'gopls',
        'glsl_analyzer',
        'zls',
        'vhdl_ls',
        'pyright',
        -- 'basedpyright',
        'ruff',
        'cmake',
    },
})
