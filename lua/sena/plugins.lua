vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    -- Mind blowjob I mean mind blowing job :skull:
    use { 'wbthomason/packer.nvim' }

    -- Telescope for fuzzy finding
    use { 'nvim-lua/plenary.nvim' }
    use { 'nvim-telescope/telescope.nvim' }
    use { 'nvim-telescope/telescope-ui-select.nvim' }

    -- Treesitter for better syntax highlighting and code understanding
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- LSP, autocomplete, autoformat, and linting
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }

    -- File explorer and UI
    use { 'kyazdani42/nvim-web-devicons' }
    use { 'nvim-lualine/lualine.nvim' }
    use { 'nvim-tree/nvim-tree.lua' }
    use { 'akinsho/bufferline.nvim' }

    -- Themes
    use { 'shatur/neovim-ayu' }
    use { 'catppuccin/nvim' }
    use { 'rebelot/kanagawa.nvim' }
    use 'RRethy/nvim-base16'

    -- Utility plugins
    use {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
                theme = 'hyper',
                config = {
                    week_header = { enable = true },
                    shortcut = {
                        { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
                        { desc = 'Files', group = 'Label', action = 'Telescope find_files', key = 'f' },
                        { desc = 'Apps', group = 'DiagnosticHint', action = 'Telescope app', key = 'a' },
                        { desc = 'Dotfiles', group = 'Number', action = 'Telescope dotfiles', key = 'd' },
                    },
                    project = { enable = true, limit = 8, action = 'Telescope find_files cwd=' },
                    mru = { limit = 10, icon = '', label = 'Recent Files', cwd_only = false },
                    footer = { 'The one and only editor for linux users' },
                }
            }
        end,
        requires = { 'nvim-tree/nvim-web-devicons' }
    }

    use 'mbbill/undotree'
    use {
        'vyfor/cord.nvim',
        run = './build || .\\build',
        config = function()
            require('cord').setup()
        end
    }

    -- Git integration
    use { 'lewis6991/gitsigns.nvim' }

    -- Auto tag and pairs
    use { 'windwp/nvim-ts-autotag' }
    use { 'windwp/nvim-autopairs' }

    -- Color utilities
    use { 'norcalli/nvim-colorizer.lua', }
    use { 'numToStr/Comment.nvim' }
    use { 'ziontee113/color-picker.nvim' }
end)
