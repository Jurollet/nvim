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
            map('n', '<leader>gS', gs.stage_hunk)
            map('n', '<leader>gR', gs.reset_hunk)
            map('v', '<leader>gS', function() gs.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
            map('v', '<leader>gR', function() gs.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
            map('n', '<leader>gBS', gs.stage_buffer)
            map('n', '<leader>gu', gs.undo_stage_hunk)
            map('n', '<leader>gBR', gs.reset_buffer)
            map('n', '<leader>gp', gs.preview_hunk)
            map('n', '<leader>gb', function() gs.blame_line{full=true} end)
            map('n', '<leader>gtb', gs.toggle_current_line_blame)
            map('n', '<leader>gd', gs.diffthis)
            map('n', '<leader>gD', function() gs.diffthis('~') end)
            map('n', '<leader>gtd', gs.toggle_deleted)

            -- Text object
            map({'o', 'x'}, 'gih', ':<C-U>Gitsigns select_hunk<CR>')
        end
    }
}