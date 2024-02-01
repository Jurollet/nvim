return {
 "folke/trouble.nvim",
 dependencies = { "nvim-tree/nvim-web-devicons" },
 opts = {},
    config = function ()
        local trouble = require("trouble")
        vim.keymap.set("n", "<leader>xx", function() trouble.toggle() end, { desc = "Toggle View" })
        vim.keymap.set("n", "<leader>xw", function() trouble.toggle("workspace_diagnostics") end, { desc = "Workspace Diag" })
        vim.keymap.set("n", "<leader>xd", function() trouble.toggle("document_diagnostics") end, { desc = "File Diag" })
        vim.keymap.set("n", "<leader>xq", function() trouble.toggle("quickfix") end, { desc = "Quickfix" })
        vim.keymap.set("n", "<leader>xl", function() trouble.toggle("loclist") end, { desc = "Localisations" })
        vim.keymap.set("n", "gR", function() trouble.toggle("lsp_references") end, { desc = "References" })
    end
}
