return {
    'nvimtools/none-ls.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local null_ls = require('null-ls')
        -- define sources
        local sources = {
            null_ls.builtins.diagnostics.djlint,
            null_ls.builtins.formatting.djlint,
        }

        -- initialize null-ls
        null_ls.setup({
            sources = sources,
        })
    end,
}
