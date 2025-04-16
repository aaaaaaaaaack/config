return -- lazy.nvim
{
    "lowitea/aw-watcher.nvim",
    opts = { -- required, but can be empty table: {}
        -- add any options here
        aw_server = {
            host = "127.0.0.1",
            port = 5600,
        },
    },
}
