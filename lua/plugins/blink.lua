return {
    'saghen/blink.cmp',
    version = 'v0.*',
    dependencies = {
        'rafamadriz/friendly-snippets',
        { 'L3MON4D3/LuaSnip', version = 'v2.*' },
        'Kaiser-Yang/blink-cmp-avante',
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
            default = { 'lsp', 'path', 'snippets', 'buffer' },
        },
        fuzzy = {
            implementation = 'lua',
        }
    }
}
