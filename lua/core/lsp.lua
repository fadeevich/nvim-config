vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = { "*.cpp", "*.c", "*.h", "*.hpp", "*.cc", "*.cxx" },
    callback = function(args)
        vim.lsp.buf.format({
            bufnr = args.buf,
            async = false,
            filter = function(client)
                return client.name == "clangd"
            end,
        })
    end,
})

vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP actions',
    callback = function(args)
        local opts = { buffer = args.buf }
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'go', vim.lsp.buf.type_definition, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        vim.keymap.set('n', 'gs', vim.lsp.buf.signature_help, opts)

        local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
        if client:supports_method('textDocument/completion') then
            local s = "qwertyuiopasdfghjklzxcvbnm. "
            client.server_capabilities.completionProvider.triggerCharacters = vim.split(s, "")
            vim.lsp.completion.enable(true, client.id, args.buf, {
                autotrigger = true,
                convert = function(item)
                    return { abbr = item.label:gsub('%b()', '') }
                end,
            })
        end
    end,
})
