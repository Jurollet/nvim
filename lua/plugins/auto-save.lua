return {
    'okuuva/auto-save.nvim',
    opts = {
        trigger_events = { -- See :h events
            immediate_save = { "InsertLeave", "BufLeave", "FocusLost" }, -- vim events that trigger an immediate save
            defer_save = { "TextChanged" }, -- vim events that trigger a deferred save (saves after `debounce_delay`)
        },
    }
}
