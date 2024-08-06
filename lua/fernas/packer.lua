-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    --require('packer').startup(function(use)
    --use({ 'stevedylandev/flexoki-nvim', as = 'flexoki' })
    --end)

    use "EdenEast/nightfox.nvim" -- Packer

    use('nvim-treesitter/nvim-treesitter', {run=':TSUpdate'})
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }
    use 'echasnovski/mini.pairs'

    -- Markdown Preview
    use({
        "iamcco/markdown-preview.nvim",
        run = function()
        vim.fn["mkdp#util#install"]()
    end,
    })

end)
