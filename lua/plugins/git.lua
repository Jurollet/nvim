return {
    {
        "kdheepak/lazygit.nvim",
        cmd = {
            "LazyGit",
            "LazyGitConfig",
            "LazyGitCurrentFile",
            "LazyGitFilter",
            "LazyGitFilterCurrentFile",
        },
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        -- setting the keybinding for LazyGit with 'keys' is recommended in
        -- order to load the plugin when the command is run for the first time
        keys = {
            { "<leader>gg", "<cmd>LazyGit<cr>", desc = "GitGud" }
        }
    }, {
        'lewis6991/gitsigns.nvim',
        opts = {
            on_attach = function(bufnr)
                local gs = package.loaded.gitsigns

                local function map(mode, l, r, opts)
                    opts = opts or {}
                    opts.buffer = bufnr
                    vim.keymap.set(mode, l, r, opts)
                end

                -- Actions
                map('n', '<leader>gp', gs.preview_hunk, { desc = "Preview hunk" })
                map('n', '<leader>gb', function() gs.blame_line{full=true} end, { desc = "Blame" })
                map('n', '<leader>gtb', gs.toggle_current_line_blame, { desc = "Blame" })
                map('n', '<leader>gd', gs.diffthis, { desc = "Diff" })
                map('n', '<leader>gD', function() gs.diffthis('~') end, { desc = "Diff" })
                map('n', '<leader>gtd', gs.toggle_deleted, { desc = "Deleted" })

                -- Text object
                map({'o', 'x'}, 'gih', ':<C-U>Gitsigns select_hunk<CR>')
            end
        }
    }
}
