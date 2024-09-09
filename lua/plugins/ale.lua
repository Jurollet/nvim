return {
    'dense-analysis/ale',
    config = function()
        -- Configuration goes here.
        local g = vim.g

        g.ale_fix_on_save = 1

        g.ale_javascript_eslint_executable = 'eslint_d'
        g.ale_javascript_eslint_use_global = 1

        g.ale_fixers = {
            javascript = {'eslint'},
            typescript = {'eslint'},
        }
    end
}
