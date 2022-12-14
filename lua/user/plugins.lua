-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, 'packer')
if not status then
  return
end

return packer.startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Color Themes
  use 'folke/tokyonight.nvim'
  use 'shaunsingh/nord.nvim'
  -- use 'Mofiqul/dracula.nvim'
  -- use 'EdenEast/nightfox.nvim'
  -- use 'lunarvim/darkplus.nvim'
  -- use 'overcache/NeoSolarized'
  -- use 'ellisonleao/gruvbox.nvim'
  -- use 'tanvirtin/monokai.nvim'

  -- Nvim icons
  use 'kyazdani42/nvim-web-devicons'

  -- Nvim Tree
  use {
    'nvim-tree/nvim-tree.lua',
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

  -- CMP plugins
  use 'hrsh7th/nvim-cmp' -- The completion plugin
  use 'hrsh7th/cmp-buffer' -- buffer completions
  use 'hrsh7th/cmp-path' -- path completions
  use 'hrsh7th/cmp-cmdline' -- cmdline completions
  use 'hrsh7th/cmp-nvim-lsp'

  -- Snippets
  use 'L3MON4D3/LuaSnip' --snippet engine
  use 'saadparwaiz1/cmp_luasnip' -- snippet completions
  use 'rafamadriz/friendly-snippets' -- a bunch of snippets to usek

  -- Managing & installing lsp servers
  use {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
  }
  use({'glepnir/lspsaga.nvim', branch = 'main'})

  -- Autopairs and Vim-surround
  use {
    'windwp/nvim-autopairs',
    config = function() require('nvim-autopairs').setup {} end
  }
  use 'tpope/vim-surround'

  -- Bufferline
  use {'akinsho/bufferline.nvim', tag = 'v3.*'}
  use 'moll/vim-bbye'

  -- Tmux and window navigation
  use('christoomey/vim-tmux-navigator')
  use('szw/vim-maximizer')

  if packer_bootstrap then
    require('packer').sync()
  end
end)
