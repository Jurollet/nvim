return {
    {
        "loctvl842/monokai-pro.nvim",
    }, { 
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                transparent_background = true,
                dim_inactive = {
                    enabled = false, -- dims the background color of inactive window
                    shade = "dark",
                    percentage = 0.01, -- percentage of the shade to apply to the inactive window
                },
            })
            vim.opt.termguicolors = true
            vim.opt.showmode = false
            vim.cmd([[colorscheme catppuccin]])
            vim.keymap.set("n", "<leader>ad", function() vim.cmd([[colorscheme catppuccin-mocha]]) end, { desc = "Dark Theme" })
        end
    }, {
        'projekt0n/github-nvim-theme',
        config = function()
            require('github-theme').setup({
                options = {
                    dim_inactive = true,
                }
            })
            vim.keymap.set("n", "<leader>al", function() vim.cmd([[colorscheme github_light]]) end, { desc = "Light Theme" })
        end,
    }
}
