return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
        local fzfLua = require("fzf-lua")
        fzfLua.setup({
            builtin = {
                ["<F1>"]     = "toggle-help",
                ["<F2>"]     = "toggle-fullscreen",
                -- Only valid with the 'builtin' previewer
                ["<F3>"]     = "toggle-preview-wrap",
                ["<F4>"]     = "toggle-preview",
                ["<F5>"]     = "toggle-preview-ccw",
                ["<F6>"]     = "toggle-preview-cw",
                ["<S-down>"] = "preview-page-down",
                ["<S-up>"]   = "preview-page-up",
                ["<S-left>"] = "preview-page-reset",
            },
            fzf = {
                ["ctrl-z"]     = "abort",
                ["ctrl-u"]     = "unix-line-discard",
                ["ctrl-f"]     = "half-page-down",
                ["ctrl-b"]     = "half-page-up",
                ["ctrl-a"]     = "beginning-of-line",
                ["ctrl-e"]     = "end-of-line",
                ["alt-a"]      = "toggle-all",
                -- Only valid with fzf previewers (bat/cat/git/etc)
                ["f3"]         = "toggle-preview-wrap",
                ["f4"]         = "toggle-preview",
                ["shift-down"] = "preview-page-down",
                ["shift-up"]   = "preview-page-up",
            },
            keymap = {
                fzf = {
                    ["ctrl-q"]     = "select-all+accept",
                }
            },
        })

        vim.keymap.set('n', '<leader>ff', fzfLua.files, { desc = 'Find' })
        vim.keymap.set('n', '<leader>fb', fzfLua.buffers, { desc = "Buffers" })
        vim.keymap.set('n', '<leader>fg', fzfLua.live_grep, { desc = "Live grep project" })
        vim.keymap.set('n', '<leader>fG', fzfLua.grep, { desc = "Grep project" })
        vim.keymap.set('n', '<leader>fr', fzfLua.oldfiles, { desc = "Recent files" })
        vim.keymap.set('n', '<leader>fw', fzfLua.grep_cword, { desc = "Find word" })
        vim.keymap.set('n', '<leader>fW', fzfLua.grep_cWORD, { desc = "Find WORD" })
        vim.keymap.set('v', '<leader>fg', fzfLua.grep_visual, { desc = "Grep visual" })

        vim.keymap.set('n', '<leader>gs', fzfLua.git_status, { desc = "Git status" })

        local config = require("fzf-lua.config")
        local actions = require("trouble.sources.fzf").actions
        config.defaults.actions.files["ctrl-t"] = actions.open
  end
}
