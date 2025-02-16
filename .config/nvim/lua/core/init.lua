-- part1, base vim setting
vim.cmd('syntax on')  
vim.cmd('filetype on')  
vim.cmd('filetype plugin on')  
vim.cmd('filetype indent on') 
-- set theme
vim.cmd('colorscheme tokyonight')  
-- directly set gd syntax  
vim.cmd('au BufRead,BufNewFile *.gd set syntax=gdscript')  

-- set for lsp
vim.opt.completeopt=menu,menuone,noselect  

-- base configs
vim.opt.number = true  
vim.opt.termguicolors = true  
  
vim.opt.shiftwidth = 4  
vim.opt.tabstop = 4  
vim.opt.mouse = 'a'  
  
vim.g.loaded_netrw = 1  
vim.g.loaded_newrwPlugin = 1  

if vim.g.neovide then
    vim.o.guifont = "Fira Code:b"
end

-- part2, call plugins and keymapping
require("core.plugins")  
require("core.keymapping")  

-- part3, config plugins
require('configs.lsp').config()  
require('configs.treesitter').config()  
require('configs.lualine').config()  
require('configs.tree').config()
require('configs.bufferline').config()
require('configs.noice').config()
require('configs.gitsigns').config()
require('configs.todo-comments').config()