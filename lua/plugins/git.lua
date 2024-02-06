return {
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
            map('n', '<leader>gS', gs.stage_hunk, { desc = "Stage hunk" })
            map('n', '<leader>gR', gs.reset_hunk, { desc = "Reset hunk" })
            map('v', '<leader>gS', function() gs.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end, { desc = "Stage hunk" })
            map('v', '<leader>gR', function() gs.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end, { desc = "Reset hunk" })
            map('n', '<leader>gBS', gs.stage_buffer, { desc = "Stage buffer" })
            map('n', '<leader>gu', gs.undo_stage_hunk, { desc = "Undo stage" })
            map('n', '<leader>gBR', gs.reset_buffer, { desc = "Reset buffer" })
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
