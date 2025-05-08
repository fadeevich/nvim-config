return {
    'A7lavinraj/assistant.nvim',
    lazy = false, -- Start TCP Listener on Neovim startup
    opts = {
        commands = {
            c = {
                extension = 'c',
                template = '~/.config/nvim/after/plugin/assistant/templates/c/main.c',
                compile = {
                    main = 'gcc',
                    args = { '$FILENAME_WITH_EXTENSION', '-o', 'build/$FILENAME_WITHOUT_EXTENSION', },
                },
                execute = {
                    main = 'build/$FILENAME_WITHOUT_EXTENSION',
                    args = nil,
                }
            },
            rust = {
                extension = 'rs',
                template = nil,
                compile = {
                    main = 'rustc',
                    args = { '$FILENAME_WITH_EXTENSION', '-o', 'build/$FILENAME_WITHOUT_EXTENSION', },
                },
                execute = {
                    main = 'build/$FILENAME_WITHOUT_EXTENSION',
                    args = nil,
                }
            },
        },
    },
}
