return {
    { "adrigzr/neotest-mocha" },
    { "antoinemadec/FixCursorHold.nvim" },
    {
        "nvim-neotest/neotest",
        requires = {
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
                            { 'spec', 'tests%/.*' },
                            { 'js', 'mjs', 'cjs', 'jsx', 'coffee', 'ts', 'tsx' }
                        ),
                    }),
                }
            })
            vim.keymap.set('n', '<leader>tstm', neotest.run.run)
            vim.keymap.set('n', '<leader>tstf', function()
                neotest.run.run(vim.fn.expand("%"))
            end)
            vim.keymap.set('n', '<leader>tstd', function()
                neotest.run.run({strategy = "dap"})
            end)
        end
    }
}

