vim.opt.signcolumn = 'yes'

local lspconfig = require('lspconfig')
local lspconfig_defaults = lspconfig.util.default_config
lspconfig_defaults.capabilities = vim.tbl_deep_extend(
    'force',
    lspconfig_defaults.capabilities,
    require('cmp_nvim_lsp').default_capabilities()
)

vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP actions',
    callback = function(event)
        local opts = { buffer = event.buf }

        vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
        vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
        vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
        vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
        vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
        vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
        vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
        vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
        vim.keymap.set({ 'n', 'x' }, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
        vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
    end,
})

lspconfig.lua_ls.setup({})
lspconfig.rust_analyzer.setup({})
lspconfig.asm_lsp.setup({})
lspconfig.somesass_ls.setup({})
lspconfig.mesonlsp.setup({})
lspconfig.gopls.setup({})
lspconfig.zls.setup({})
lspconfig.vhdl_ls.setup({})
lspconfig.cmake.setup({})
-- lspconfig.glsl_analyzer.setup({})

local opts = {
    capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
}

-- Setup lsps that are not supported by `mason.nvim` but supported by `nvim-lspconfig` here.
if vim.fn.executable("glsl_analyzer") == 1 then
    local ok, _opts = pcall(require, "configs.glsl_analyzer")
    if ok then
        local final_opts = vim.tbl_deep_extend("keep", _opts, opts)
        lspconfig.glsl_analyzer.setup(final_opts)
    end
end

lspconfig.clangd.setup({
    on_attach = function(client, bufnr)
        client.server_capabilities.signatureHelpProvider = false
    end,
})

lspconfig.pyright.setup({
    settings = {
        pyright = {
            -- Using Ruff's import organizer
            disableOrganizeImports = true,
        },
        python = {
            analysis = {
                -- Ignore all files for analysis to exclusively use Ruff for linting
                ignore = { '*' },
            },
        },
    },
})

lspconfig.ruff.setup({
    init_options = {
        settings = {
            logLevel = 'debug',
        }
    }
})
