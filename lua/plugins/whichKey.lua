return {
    "folke/which-key.nvim",
    event = 'VeryLazy',
    opts = {},
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Buffer Local Keymaps (which-key)",
        },
    },
    config = function()
        vim.o.timeout = true
        vim.o.timeoutlen =300
        local wk = require("which-key")
        wk.setup {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
        wk.add({
            { "<leader>d",  group = "Debug" },
            { "<leader>e",  group = "Explore" },
            { "<leader>f",  group = "Find" },
            { "<leader>g",  group = "Git" },
            { "<leader>gt", desc = "Toggle" },
            { "<leader>l",  group = "LSP" },
            { "<leader>s",  group = "Shell" },
            { "<leader>t",  group = "Test" },
            { "<leader>x",  group = "Fix" },
        })
    end
}

