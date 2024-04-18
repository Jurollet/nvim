return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
        local fzfLua = require("fzf-lua")
        fzfLua.setup({})

        vim.keymap.set('n', '<leader>ff', fzfLua.files, { desc = 'Find' })
        vim.keymap.set('n', '<leader>fb', fzfLua.buffers, { desc = "Buffers" })
        vim.keymap.set('n', '<leader>fg', fzfLua.live_grep, { desc = "Live grep project" })
        vim.keymap.set('n', '<leader>fG', fzfLua.grep, { desc = "Grep project" })
        vim.keymap.set('n', '<leader>fr', fzfLua.oldfiles, { desc = "Recent files" })
        vim.keymap.set('n', '<leader>fw', fzfLua.grep_cword, { desc = "Find word" })
        vim.keymap.set('n', '<leader>fW', fzfLua.grep_cWORD, { desc = "Find WORD" })
        vim.keymap.set('v', '<leader>fg', fzfLua.grep_visual, { desc = "Grep visual" })

        vim.keymap.set('n', '<leader>gs', fzfLua.git_status, { desc = "Git status" })
  end
}
