local  nnoremap = require("user.keymap").nnoremap
local  inoremap = require("user.keymap").inoremap
local  vnoremap = require("user.keymap").vnoremap
local  xnoremap = require("user.keymap").xnoremap

-- Normal --
-- Better window navigation
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")

-- Nvim Tree 
nnoremap("<leader>p", ":NvimTreeFocus<CR>")
nnoremap("<leader>n", ":NvimTreeToggle<CR>")

-- Navigate buffers
nnoremap("<S-l>", ":bnext<CR>")
nnoremap("<S-h>", ":bprevious<CR>")

-- Move text up and down
nnoremap("<A-j>", "<ESC>:m .+1<CR>==gi")
nnoremap("<A-k>", "<ESC>:m .-2<CR>==gi")

-- Insert -- 
-- jk and kj is faster
inoremap("jk", "<ESC>")
inoremap("kj", "<ESC>")

-- Visual --
-- Stay in indent mode
vnoremap("<", "<gv")
vnoremap(">", ">gv")

-- Move text up and down
vnoremap("<A-j>", ":m .+1<CR>==")
vnoremap("<A-k>", ":m .-2<CR>==")
vnoremap("p", '"_dP')

-- Visual Block -- 
-- Move text up and down
xnoremap("J", ":move '>+1<CR>gv-gv")
xnoremap("K", ":move '<-2<CR>gv-gv")
xnoremap("<A-j>", ":move '>+1<CR>gv-gv")
xnoremap("<A-k>", ":move '<-2<CR>gv-gv")
