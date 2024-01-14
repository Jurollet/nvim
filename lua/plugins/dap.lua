return {
    { 
        "mfussenegger/nvim-dap", 
        config = function()
            local dap = require('dap')
            dap.configurations.typescript = {
                {
                    type = "node2",
                    name = "debug",
                    request = "launch",
                    program = "${workspaceFolder}/dist/app.js",
                    cwd = vim.fn.getcwd(),
                    sourceMaps = true,
                    protocol = "inspector",
                    console = "integratedTerminal",
                    env = { NODE_PATH = "dist" }
                }
            }
            dap.configurations.javascript = dap.configurations.typescript
            local mason_path = vim.fn.glob(vim.fn.stdpath "data" .. "/mason/")
            dap.adapters.node2 = {
                type = "executable",
                command = "node",
                args = { mason_path .. "packages/node-debug2-adapter/out/src/nodeDebug.js" }
            }
            vim.keymap.set('n', '<leader>dl', dap.continue, {})
            vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint, {})
            vim.keymap.set('n', '<leader>dt', dap.terminate, {})
        end
    },
    {
        "rcarriga/nvim-dap-ui",
        requires = { "mfussenegger/nvim-dap" },
        config = function()
            local dap = require("dap")
            local dapui = require('dapui')
            dapui.setup()
            dap.listeners.before.attach.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
                dapui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
                dapui.close()
            end
        end
    },
    { "jay-babu/mason-nvim-dap.nvim" }
}
