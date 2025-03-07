return {
    'hrsh7th/nvim-cmp',
    opts = function(_, opts)
        local cmp = require('cmp')
        opts.snippet = {
            expand = function(args)
                vim.snippet.expand(args.body)
            end,
        }
        opts.mapping = {
            ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = 'select' }),
            ['<C-n>'] = cmp.mapping.select_next_item({ behavior = 'select' }),
            ['<CR>'] = cmp.mapping.confirm({ select = false }),
            ['<C-Space>'] = cmp.mapping.complete(),
            ['<C-u>'] = cmp.mapping.scroll_docs(-4),
            ['<C-d>'] = cmp.mapping.scroll_docs(4),
        }
        opts.sources = {
            { name = 'nvim_lsp' },
            { name = 'path' },
            {
                name = 'lazydev',
                group_index = 0, -- set group index to 0 to skip loading LuaLS completions
            }
        }
    end,
}
