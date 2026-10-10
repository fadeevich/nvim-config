vim.pack.add({ 'https://github.com/neovim/nvim-lspconfig' })

vim.lsp.enable('lua_ls')
vim.lsp.enable('vimls')
vim.lsp.enable('clangd')
vim.lsp.enable('zls')
vim.lsp.enable('mesonlsp')

local function find_venv_python()
    local root_dir = vim.fs.root(0, { '.git', 'pyproject.toml', 'setup.py', 'requirements.txt' })
    if not root_dir then
        return nil
    end
    local venv_names = { '.venv', 'venv', 'env' }
    for _, name in ipairs(venv_names) do
        local python_path = root_dir .. '/' .. name .. '/bin/python'
        if vim.fn.filereadable(python_path) == 1 then
            return python_path
        end
    end
    return nil
end

vim.lsp.config('pyright', {
    settings = {
        python = {
            pythonPath = find_venv_python(),
        },
    },
})
vim.lsp.enable('pyright')
