require('tokyonight').setup({
    styles = {
        functions = { italic = false },
        comments = { italic = false },
        keywords = { italic = false },
    },
    on_colors = function(colors)
        vim.api.nvim_set_hl(0, 'LineNr', {
            fg = colors.orange,
            bold = false,
        }) -- Default color for reset
    end
})
