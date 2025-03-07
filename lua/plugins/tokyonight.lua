return {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    init = function()
        vim.cmd[[colorscheme tokyonight]]
    end,
    opts = {
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
    },
}
