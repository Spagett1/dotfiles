-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use { "ThePrimeagen/harpoon" }
    use { "mbbill/undotree" }
    use { "tpope/vim-fugitive" }
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use {
        'akinsho/bufferline.nvim',
        tag = "v4.5.0",
        requires = {
            'nvim-tree/nvim-web-devicons',
            'dokwork/lualine-ex' },
    }
    use { "lukas-reineke/indent-blankline.nvim" }
    use { "m4xshen/autoclose.nvim" }
    use { "HiPhish/rainbow-delimiters.nvim" }
    use { "terrortylor/nvim-comment" }
    use { "Mofiqul/dracula.nvim" }
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }
    use {"akinsho/toggleterm.nvim", tag = '*'}
    use {"elentok/format-on-save.nvim"}
    use {"lervag/vimtex"}

end)
