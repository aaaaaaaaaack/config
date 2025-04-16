return {
    "ThePrimeagen/harpoon",
    lazy = false,
    branch = "harpoon2",
    init = function()
        local harpoon = require("harpoon")

        harpoon:setup()

        vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end, { desc = "Add file to list" })
        vim.keymap.set("n", "<leader>hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
            { desc = "Show harpoon listt" })

        vim.keymap.set("n", "<leader>hu", function() harpoon:list():select(1) end, { desc = "Select 1 file" })
        vim.keymap.set("n", "<leader>hi", function() harpoon:list():select(2) end, { desc = "Select 2 file" })
        vim.keymap.set("n", "<leader>ho", function() harpoon:list():select(3) end, { desc = "Select 3 file" })
        vim.keymap.set("n", "<leader>hp", function() harpoon:list():select(4) end, { desc = "Select 4 file" })

        -- Toggle previous & next buffers stored within Harpoon list
        vim.keymap.set("n", "<leader>hj", function() harpoon:list():prev() end, { desc = "Toggle next file" })
        vim.keymap.set("n", "<leader>hk", function() harpoon:list():next() end, { desc = "Togle previous file" })

        -- ee
        vim.keymap.set("n", "<leader>hc", function() harpoon:list():clear() end, { desc = "Clear Harpoon list" })
        vim.keymap.set("n", "<leader>hr", function() harpoon:list():remove() end,
            { desc = "Remove current file from list" })
    end,
    dependencies = { "nvim-lua/plenary.nvim" },
}
