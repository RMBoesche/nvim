vim.g.mapleader = " "

vim.opt.mouse = "a"
vim.opt.termguicolors = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 8

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.pumheight = 10
vim.opt.cmdheight = 1

vim.opt.swapfile = false

vim.opt.showmode = false
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.backspace = "indent,eol,start"
vim.opt.updatetime = 50

vim.opt.completeopt = "menu,menuone,noselect"

vim.api.nvim_command("autocmd BufRead,BufNewFile *.ngc set filetype=perl")
vim.api.nvim_command("autocmd BufRead,BufNewFile *.ssp set filetype=spice")
