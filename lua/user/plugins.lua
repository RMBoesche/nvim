return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Color Themes
  use 'EdenEast/nightfox.nvim'
  use 'folke/tokyonight.nvim'
  use 'Mofiqul/dracula.nvim'
  use 'shaunsingh/nord.nvim'
  -- use 'overcache/NeoSolarized'
  -- use 'ellisonleao/gruvbox.nvim'
  -- use 'tanvirtin/monokai.nvim'


  -- Nvim Tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }   

  -- Lua Line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Git 
  use { 'lewis6991/gitsigns.nvim' }
  use { 'tpope/vim-fugitive' }

  -- Comments
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

end)
