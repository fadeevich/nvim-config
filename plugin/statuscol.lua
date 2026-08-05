vim.pack.add({ 'https://github.com/luukvbaal/statuscol.nvim' })

local builtin = require('statuscol.builtin')
require('statuscol').setup({
    relculright = true,
    segments = {
        { 
            text = { builtin.foldfunc },
            click = 'v:lua.ScFa',
        },
        { 
            text = { builtin.lnumfunc, ' ' },
            click = 'v:lua.ScLa',
        },
    },
})
