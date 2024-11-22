return {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    config = function()
        require('configs.lsp-signature')
    end,
}
