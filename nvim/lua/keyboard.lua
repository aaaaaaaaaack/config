local keymap = vim.keymap

vim.g.mapleader = " "
keymap.set('n', '<leader>e', vim.cmd.Ex)

keymap.set('n', '<leader>w', vim.cmd.w)
keymap.set('n', '<leader>q', vim.cmd.q)

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')


