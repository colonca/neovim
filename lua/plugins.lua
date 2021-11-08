local use = require('packer').use
require('packer').startup(function()

   --tools
   -- LSP and completion 
   use {'neovim/nvim-lspconfig'}
   use {'hrsh7th/nvim-compe'}
   --fuzzy finder
   use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
   }  
   use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
   }

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

