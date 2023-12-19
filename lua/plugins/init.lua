return {
  -- Color Themes
  { 'catppuccin/nvim', as = 'catppuccin' },

  -- Nvim icons
  'kyazdani42/nvim-web-devicons',

  -- Nvim Tree
  'nvim-tree/nvim-tree.lua',

  -- Telescope
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    -- or                            , branch = '0.1.x',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  },
  {'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },

  -- Harpoon
  'ThePrimeagen/harpoon',

  -- Treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
      pcall(require('nvim-treesitter.install').update {with_sync = true})
    end,
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    }
  },

  -- Lua Line
  'nvim-lualine/lualine.nvim',

  -- Git 
  'lewis6991/gitsigns.nvim',
  'tpope/vim-fugitive',

  -- Comments
  'numToStr/Comment.nvim',

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- CMP plugins
  'hrsh7th/nvim-cmp', -- The completion plugin
  'hrsh7th/cmp-buffer', -- buffer completions
  'hrsh7th/cmp-path', -- path completions
  'hrsh7th/cmp-cmdline', -- cmdline completions
  'hrsh7th/cmp-nvim-lsp',

  -- Snippets
  {
    "L3MON4D3/LuaSnip", --snippet engine
    build = "make install_jsregexp"
  },
  'saadparwaiz1/cmp_luasnip', -- snippet completions
  'rafamadriz/friendly-snippets', -- a bunch of snippets to use

  -- Managing & installing lsp servers
  { -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      'j-hui/fidget.nvim',

      -- Additional lua configuration, makes nvim stuff amazing
      'folke/neodev.nvim',

      -- VScode like icons on cmp
      'onsails/lspkind.nvim',

      -- Rust Plugin
      'simrat39/rust-tools.nvim'
    },
  },

  -- Null LS
  'jose-elias-alvarez/null-ls.nvim',

  -- Autopairs and Vim-surround
  'windwp/nvim-autopairs',
  'tpope/vim-surround',

  -- Tmux and window navigation
  'christoomey/vim-tmux-navigator',
  'szw/vim-maximizer',

  -- Markdown Preview
  {
    "iamcco/markdown-preview.nvim",
    config = function() vim.fn["mkdp#util#install"]() end,
  },

  -- Debugging
  'mfussenegger/nvim-dap',
  'mfussenegger/nvim-dap-python',

  -- Github Copilot
  'github/copilot.vim',

  --Vimtex
  'lervag/vimtex',

  -- Leap
  'ggandor/leap.nvim',

  -- Repeat maps
  'tpope/vim-repeat',

  -- P4 syntax
  'rightson/vim-p4-syntax',

  -- Jupyter Notebook
  -- 'luk400/vim-jukit'
}
