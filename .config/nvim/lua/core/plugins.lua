vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    
	-- startup optimise
    use 'dstein64/vim-startuptime'
    use 'nathom/filetype.nvim'

    -- theme
    use 'sainnhe/sonokai'

    -- file tree
    use {
        'nvim-tree/nvim-tree.lua',
        require = { 'nvim-tree/nvim-web-devicons', opt = true},
    }

    -- language support
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/nvim-cmp'

    -- language treesitter
    use 'nvim-treesitter/nvim-treesitter'

    -- status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- file search
    use {
        'nvim-telescope/telescope.nvim',
        requires = 'nvim-lua/plenary.nvim'
    }

    -- mainmenu
    use {
        'goolord/alpha-nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }
end)
