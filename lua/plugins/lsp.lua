return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "williamboman/mason.nvim",
        "neovim/nvim-lspconfig",
        "saghen/blink.cmp",
        "L3MON4D3/LuaSnip",
    },
    config = function()
        vim.api.nvim_create_autocmd('LspAttach', {
            desc = 'LSP actions',
            callback = function(event)
                local opts = {buffer = event.buf}

                -- these will be buffer-local keybindings
                -- because they only work if you have an active language server

                vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
                vim.keymap.set('n', 'gd', '<cmd>Trouble lsp_definitions toggle<cr>', opts)
                vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
                vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
                vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
                vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
                vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
                vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
                vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
                vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)

                vim.keymap.set('n', '<leader>la', '<cmd>lua vim.lsp.buf.code_action()<cr>', { buffer = event.buf, desc = "Actions" })
                vim.keymap.set('n', '<leader>lR', '<cmd>lua vim.lsp.buf.rename()<cr>', { buffer = event.buf, desc = "Rename" })
                vim.keymap.set({'n', 'x'}, '<leader>lf', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', { buffer = event.buf, desc = "Format" })
            end
        })

        local lsp_capabilities = require('blink.cmp').get_lsp_capabilities()

        local default_setup = function(server)
            require('lspconfig')[server].setup({
                capabilities = lsp_capabilities,
            })
        end

        require('mason').setup({})
        require('mason-lspconfig').setup({
            ensure_installed = {'ts_ls', 'rust_analyzer', 'lua_ls'},
            handlers = {
                default_setup,
            },
        })

        require('lspconfig').ts_ls.setup({
            init_options = {
                preferences = {
                    importModuleSpecifierPreference = 'non-relative',
                },
            }
        })

        -- local cmp = require('cmp')
        --
        -- cmp.setup({
        --     sources = {
        --         {name = 'nvim_lsp'},
        --         {name = 'luasnip'},
        --     },
        --     mapping = cmp.mapping.preset.insert({
        --         -- Enter key confirms completion item
        --         ['<CR>'] = cmp.mapping.confirm({select = true}),
        --
        --         -- Ctrl + space triggers completion menu
        --         ['<C-Space>'] = cmp.mapping.complete(),
        --     }),
        --     snippet = {
        --         expand = function(args)
        --             require('luasnip').lsp_expand(args.body)
        --         end,
        --     },
        -- })
    end
}
