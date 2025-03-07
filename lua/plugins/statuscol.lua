return {
    'luukvbaal/statuscol.nvim',
    opts = function(_, opts)
        local builtin = require('statuscol.builtin')
        opts.relculright = true
        opts.segments = {
            { text = { builtin.foldfunc },      click = 'v:lua.ScFa' },
            { text = { builtin.lnumfunc, ' ' }, click = 'v:lua.ScLa' },
        }
    end,
}

