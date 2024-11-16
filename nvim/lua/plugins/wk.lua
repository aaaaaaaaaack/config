return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    config = function()
        local wk = require("which-key")
        wk.add({
            { "<leader>f", group = "file" }, -- group
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
            { "<leader>f1", hidden = true }, -- hide this keymap
            { "<leader>h", group = "Harpoon" },
        {
            -- Nested mappings are allowed and can be added in any order
            -- Most attributes can be inherited or overridden on any level
            -- There's no limit to the depth of nesting
            mode = { "n", "v" }, -- NORMAL and VISUAL mode
            { "<leader>q", "<cmd>q<cr>", desc = "Quit" }, -- no need to specify mode since it's inherited
            { "<leader>w", "<cmd>w<cr>", desc = "Write" },
        }
    })
  end,
 -- keys = {
 --   {
 --     "<leader>?",
 --     function()
 --       require("which-key").show({ global = false })
 --     end,
 --     desc = "Buffer Local Keymaps (which-key)",
 --   },

}
