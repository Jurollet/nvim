return {
    {
        "loctvl842/monokai-pro.nvim",
    }, { 
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                dim_inactive = {
                    enabled = true, -- dims the background color of inactive window
                    shade = "dark",
                    percentage = 0.01, -- percentage of the shade to apply to the inactive window
                },
            })
            vim.opt.termguicolors = true
            vim.opt.showmode = false
            vim.cmd([[colorscheme catppuccin]])
        end
    }
}
