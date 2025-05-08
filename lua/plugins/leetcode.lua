return {
    'kawre/leetcode.nvim',
    cmd = 'Leet',
    opts = {
        hooks = {
            ---@type fun(question: lc.ui.Question)[]
            ["question_enter"] = {
                function()
                    -- os.execute "sleep 1"
                    local file_extension = vim.fn.expand "%:e"
                    if file_extension == "rs" then
                        local bash_script = tostring(vim.fn.stdpath "data" .. "/leetcode/rust_init.sh")
                        local success, error_message = os.execute(bash_script)
                        if success then
                            print "Successfully updated rust-project.json"
                            vim.cmd "LspRestart rust_analyzer"
                        else
                            print("Failed update rust-project.json. Error: " .. error_message)
                        end
                    end
                end,
            },
        },
    },
}
