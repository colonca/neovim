local use = require('packer').use
require('packer').startup(function()

   --tools
   -- LSP and completion 
   use {'neovim/nvim-lspconfig'}
   use {'hrsh7th/nvim-compe'}

   --fuzzy finder
   use {
       'nvim-telescope/telescope.nvim',
        requires = {
            { 'nvim-lua/plenary.nvim'},
            { 'nvim-lua/popup.nvim' },
            { 'nvim-telescope/telescope-fzy-native.nvim' },
            { 'kyazdani42/nvim-web-devicons' }
        }
   }  

   use {
     'kyazdani42/nvim-tree.lua',
     requires = 'kyazdani42/nvim-web-devicons',
     config = function() require'nvim-tree'.setup {} end
   }

  use {
        "folke/twilight.nvim",
        config = function()
            require("twilight").setup {
                context = 3,
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
                expand = { -- for treesitter, we we always try to expand to the top-most ancestor with these types
                    "function_declaration",
                    "function_call_expression",
                    "expression_statement",
                    "function",
                    "function_definition",
                    "method_declaration",
                    "method",
                    "table",
                    "if_statement",
                    "type_declaration",
                },
            }
        end
    }
 
    --ident line
   use "lukas-reineke/indent-blankline.nvim"

   -- Git
   use 'tpope/vim-fugitive'
   --vim test
   use 'vim-test/vim-test' 

   --laravel
   use {
        'noahfrederick/vim-laravel',
        requires = {
            { 'tpope/vim-projectionist' },
            { 'noahfrederick/vim-composer' }
        }
    }
   use 'jwalton512/vim-blade'
   --utils 
   use 'mattn/emmet-vim'

   --neovim customization

   --sintax highligthing
   use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
   }
   --statusline
   use {
      'hoob3rt/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
   }
   --tabs
   use {
     'romgrk/barbar.nvim',
     requires = {'kyazdani42/nvim-web-devicons'}
   }
   --ColorSchema
   use {"npxbr/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
   use 'folke/tokyonight.nvim'
   use 'navarasu/onedark.nvim'
end)

