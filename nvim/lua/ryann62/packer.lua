-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }  

    -- Lua port of Everforest Colorscheme
    use({
        "neanias/everforest-nvim",
        config = function()
            require('ryann62.colorschemes.everforest-config').setup()
        end,
    })

    -- Treesitter
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
    use {
        'nvim-treesitter/playground'
    }

    -- Harpoon
    use 'ThePrimeagen/harpoon'

    -- LSP-Zero
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }

    -- nvim-colorizer
    use {
        'norcalli/nvim-colorizer.lua',
        config = function()
            require'colorizer'.setup()
        end
    }

    -- Markdown preview
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
end)
