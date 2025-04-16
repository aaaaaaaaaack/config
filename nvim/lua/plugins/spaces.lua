return {
    {
        'johnfrankmorgan/whitespace.nvim',
        config = function()
            local whitespace = require('whitespace-nvim')
            whitespace.setup({
                -- configuration options and their defaults

                -- `highlight` configures which highlight is used to display
                -- trailing whitespace
                highlight = 'DiffDelete',

                -- `ignored_filetypes` configures which filetypes to ignore when
                -- displaying trailing whitespace
                ignored_filetypes = { 'TelescopePrompt', 'Trouble', 'help', 'dashboard' },

                -- `ignore_terminal` configures whether to ignore terminal buffers
                ignore_terminal = true,

                -- `return_cursor` configures if cursor should return to previous
                -- position after trimming whitespace
                return_cursor = true,
            })

            -- remove trailing whitespace with a keybinding
            vim.keymap.set('n', '<Leader>ss', function() whitespace:trim() end,
                { desc = "Removed trailing whitespace" })
        end
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        config = function()
            require('ibl').setup {
                scope = {
                    enabled = true,
                },
            }
        end,
    },
}
