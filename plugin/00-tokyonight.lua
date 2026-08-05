vim.pack.add({ 'https://github.com/folke/tokyonight.nvim' })
require('tokyonight').setup({
    style = 'night',
    styles = {
        functions = { italic = false },
        comments = { italic = false },
        keywords = { italic = false },
        variables = { italic = false },
    },
    on_colors = function(colors)
        vim.api.nvim_set_hl(0, 'LineNr', {
            fg = colors.orange,
            bold = false,
        })
    end,
})

vim.cmd.colorscheme('tokyonight')

