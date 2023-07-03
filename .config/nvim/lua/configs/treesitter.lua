local M = {}

function M.config()
        require('nvim-treesitter.configs').setup{
                highlight = {
                        enable = true,
                },
                indent = {
                        enable = true
                },
                incremental_selection = {
                enable = true,
                keymaps = {
                init_selection = '<CR>',
                node_incremental = '<CR>',
                node_decremental = '<BS>',
                scope_incremental = '<TAB>',
                }
                },
        }
end

return M

