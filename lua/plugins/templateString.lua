return {
    'axelvc/template-string.nvim',
    config = function()
        require('template-string').setup({
            filetypes = { 'typescript', 'javascript' },
            remove_template_string = true,
            restore_quotes = {
                normal = [[']],
            },
        })
    end
}
