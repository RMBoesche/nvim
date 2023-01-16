local  nnoremap = require("user.keymap").nnoremap
local  inoremap = require("user.keymap").inoremap
local  vnoremap = require("user.keymap").vnoremap
local  xnoremap = require("user.keymap").xnoremap

-- Leader
vim.g.mapleader = " "

-- Normal --
-- Better window navigation
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")

-- Nvim Tree 
-- nnoremap("<leader>p", ":NvimTreeFocus<CR>")
nnoremap("<leader>p", ":NvimTreeToggle<CR>")


-- Navigate buffers
nnoremap("<S-l>", ":bnext<CR>")
nnoremap("<S-h>", ":bprevious<CR>")
nnoremap("<Leader>q", ":Bdelete<CR>")

-- Close windows
nnoremap("<Leader>c", ":close<CR>")

-- Delete do not go to register
nnoremap("x", '"_x')

-- Increment and Decrement
nnoremap("<Leader>+","<C-a>")
nnoremap("<Leader>-","<C-x>")

-- Move text up and down
nnoremap("<A-j>", "<ESC>:m .+1<CR>==gi")
nnoremap("<A-k>", "<ESC>:m .-2<CR>==gi")

-- No highlight
nnoremap("<leader>nh", ":nohl<CR>")

-- Window management
nnoremap("<leader>sv", "<C-w>v") -- split vertically
nnoremap("<leader>sh", "<C-w>s") -- split horizontally
nnoremap("<leader>se", "<C-w>=") -- make split equal width
nnoremap("<leader>sx", ":close<CR>") -- close window
nnoremap("<leader>sm", ":MaximizerToggle<CR>")

-- Tab management
nnoremap("<leader>to", ":tabnew<CR>") -- open new tab
nnoremap("<leader>tx", ":tabclose<CR>") -- close tab
nnoremap("<leader>tn", ":tabn<CR>") -- go to next tab
nnoremap("<leader>tp", ":tabp<CR>") -- go to previous tab


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
