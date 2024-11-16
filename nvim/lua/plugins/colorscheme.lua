-- return {
--     'jacoborus/tender.vim',
--     lazy = false,
--     priority = 1000,
--     config = function()
--         vim.cmd([[colorscheme tender]])
--     end,
-- }

return {
    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require('kanagawa').load('wave')
        end,
    },
    -- { 
    --     "catppuccin/nvim",
    --     name = "catppuccin",
    --     priority = 1000,
    --     config = function()
    --         setColorScheme()
    --     end,
    -- },
    -- {
    --     'jacoborus/tender.vim',
    --     lazy = false,
    --     priority = 1000,
    --     config = function()
    --         vim.cmd([[colorscheme tender]])
    --     end,
    -- }
}
