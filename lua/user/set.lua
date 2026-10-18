vim.g.mapleader = " "

-- Perl::Tidy / Perl::Critic live in ~/perl5 (cpanm -l ~/perl5); expose them to perlnavigator and conform
local perl5 = vim.fn.expand("~/perl5")
if vim.uv.fs_stat(perl5) then
  vim.env.PATH = perl5 .. "/bin:" .. vim.env.PATH
  vim.env.PERL5LIB = perl5 .. "/lib/perl5" .. (vim.env.PERL5LIB and (":" .. vim.env.PERL5LIB) or "")
end

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
vim.opt.cmdheight = 0

vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.signcolumn = "yes"

vim.opt.showmode = false
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.backspace = "indent,eol,start"
vim.opt.updatetime = 250

vim.opt.completeopt = "menu,menuone,noselect"
-- Conceal markup (links, emphasis) in Markdown only; obsidian.nvim needs >= 1
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function() vim.opt_local.conceallevel = 2 end,
})

vim.filetype.add({ extension = { ngc = "perl", ssp = "spice" } })

vim.g.clipboard = {
  name = 'tmux',
  copy = {
    ['+'] = { 'tmux', 'load-buffer', '-w', '-' },  -- Copy to tmux buffer
    ['*'] = { 'tmux', 'load-buffer', '-w', '-' },  -- Copy to tmux buffer
  },
  paste = {
    ['+'] = { 'tmux', 'save-buffer', '-' },  -- Paste from tmux buffer
    ['*'] = { 'tmux', 'save-buffer', '-' },  -- Paste from tmux buffer
  },
  cache_enabled = 1,  -- Enable clipboard caching
}

