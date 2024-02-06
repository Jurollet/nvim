return {
    'nvim-telescope/telescope.nvim', 
    version = '0.1.5',
	dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.git_files, { desc = "Git files" })
        vim.keymap.set('n', '<leader>fa', builtin.find_files, { desc = "All files" })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Buffers" })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Grep project" })
        vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = "Recent files" })
        vim.keymap.set('n', '<leader>fw', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end, { desc = "Find Word" })
    end
}
