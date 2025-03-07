return {
    'neovim/nvim-lspconfig',
    config = function()
        local lspconfig = require('lspconfig')
        local capabilities = require('cmp_nvim_lsp').default_capabilities()


        vim.api.nvim_create_autocmd('LspAttach', {
            desc = 'LSP actions',
            callback = function(args)
                local opts = { buffer = args.buf }
                vim.keymap.set('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
                vim.keymap.set('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
                vim.keymap.set('n', 'gi', '<Cmd>lua vim.lsp.buf.implementation()<CR>', opts)
                vim.keymap.set('n', 'go', '<Cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
                vim.keymap.set('n', 'gr', '<Cmd>lua vim.lsp.buf.references()<CR>', opts)
                vim.keymap.set('n', 'gs', '<Cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
                vim.keymap.set('n', '<F2>', '<Cmd>lua vim.lsp.buf.rename()<CR>', opts)
                vim.keymap.set({ 'n', 'x' }, '<F3>', '<Cmd>lua vim.lsp.buf.format({async = true})<CR>', opts)
                vim.keymap.set('n', '<F4>', '<Cmd>lua vim.lsp.buf.code_action()<CR>', opts)

                vim.api.nvim_create_autocmd('BufWritePre', {
                    buffer = args.buf,
                    callback = function()
                        vim.lsp.buf.format { async = false }
                    end
                })
            end,
        })

        lspconfig.lua_ls.setup {
            capabilities = capabilities,
        }

        lspconfig.clangd.setup {
            capabilities = capabilities,
        }
    end,
}
