return {
    { "adrigzr/neotest-mocha" },
    { "antoinemadec/FixCursorHold.nvim" },
    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-treesitter/nvim-treesitter",
            "adrigzr/neotest-mocha"
        },
        config = function()
            local neotest = require("neotest")
            neotest.setup({
                adapters = {
                    require('neotest-mocha')({
                        command = "npm test --",

                        is_test_file = require('neotest-mocha.util').create_test_file_extensions_matcher(
                            { 'spec', 'test[s]?%/.*' },
                            { 'js', 'mjs', 'cjs', 'jsx', 'coffee', 'ts', 'tsx', 'lua' }
                        ),
                    }),
                }
            })
            vim.keymap.set('n', '<leader>tm', neotest.run.run, { desc = "Method" })
            vim.keymap.set('n', '<leader>tf', function()
                neotest.run.run(vim.fn.expand("%"))
            end, { desc = "File" })
            vim.keymap.set('n', '<leader>td', function()
                neotest.run.run({strategy = "dap"})
            end, { desc = "Debug" })
            vim.keymap.set('n', '<leader>ts', neotest.summary.toggle, { desc = "Summary"})
        end
    }
}

