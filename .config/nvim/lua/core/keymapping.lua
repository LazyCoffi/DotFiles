-- set leader
vim.g.mapleader = ';'

-- base
vim.keymap.set('n', '<leader>s', ':w<cr>')

-- window
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<cr>')
vim.keymap.set('n', '<leader>w1', ':sp<cr>')
vim.keymap.set('n', '<leader>w2', ':vs<cr>')
vim.keymap.set('n', '<leader>wx', ':x<cr>')
vim.keymap.set('n', '<leader>wq', ':wq<cr>')
vim.keymap.set('n', '<leader>we', ':q!<cr>')

-- bufferline
vim.keymap.set('n', '<A-j>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<A-k>', ':BufferLineCycleNext<CR>')

-- file search
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

-- rust cargo run under main.rs
vim.keymap.set('n', '<leader>rr', ':!cargo run --manifest-path %:p\\..\\..\\Cargo.toml<CR>')
-- rust cargo build under main.rs
vim.keymap.set('n', '<leader>rb', ':!cargo build --manifest-path %:p\\..\\..\\Cargo.toml<CR>')