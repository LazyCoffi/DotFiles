-- set leader
vim.g.mapleader = ';'

-- base
vim.keymap.set('n', '<leader>s', ':w<cr>')

-- window
vim.keymap.set('n', '<F3>', ':NvimTreeToggle<cr>')
vim.keymap.set('n', '<leader>w1', ':sp<cr>')
vim.keymap.set('n', '<leader>w2', ':vs<cr>')
vim.keymap.set('n', '<leader>wx', ':x<cr>')
vim.keymap.set('n', '<leader>wq', ':wq<cr>')
vim.keymap.set('n', '<leader>we', ':q!<cr>')

-- file search
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
