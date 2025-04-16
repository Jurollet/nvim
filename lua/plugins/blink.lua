return {
    'saghen/blink.cmp',
    version = 'v0.*',
    dependencies = {
        'rafamadriz/friendly-snippets',
        { 'L3MON4D3/LuaSnip', version = 'v2.*' },
    },
    opts = {
        keymap = { preset = 'enter' },
        signature = { enabled = true },
        snippets = {
            expand = function(snippet) require('luasnip').lsp_expand(snippet) end,
            active = function(filter)
                if filter and filter.direction then
                    return require('luasnip').jumpable(filter.direction)
                end
                return require('luasnip').in_snippet()
            end,
            jump = function(direction) require('luasnip').jump(direction) end,
        },
        sources = {
            default = { 'lsp', 'path', 'snippets', 'luasnip', 'buffer' },
        },
        windows = {
            documentation = {
                border = vim.g.borderStyle,
                min_width = 15,
                max_width = 45, -- smaller, due to https://github.com/Saghen/blink.cmp/issues/194
                max_height = 10,
                auto_show = true,
                auto_show_delay_ms = 250,
            },
            autocomplete = {
                border = vim.g.borderStyle
            },
        }
    }
}
