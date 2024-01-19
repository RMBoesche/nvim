local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Leader
vim.g.mapleader = " "

require('lazy').setup('plugins')
require("user.set")
require("user.remap")
require("plugins-config.autopairs")
require("plugins-config.catppuccin")
require("plugins-config.cmp")
require("plugins-config.comment")
require("plugins-config.gitsigns")
require("plugins-config.harpoon")
require("plugins-config.leap")
require("plugins-config.lspconfig")
require("plugins-config.lualine")
require("plugins-config.luasnip")
require("plugins-config.markdown")
require("plugins-config.nvim-tree")
require("plugins-config.nvim-web-devicons")
require("plugins-config.rust-tools")
require("plugins-config.telescope")
require("plugins-config.treesitter")
require("plugins-config.vimtex")
