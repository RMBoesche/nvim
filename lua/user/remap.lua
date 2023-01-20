-- Leader
vim.g.mapleader = " "

-- Normal --
-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Better half window scroll
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Nvim Tree 
-- vim.keymap.set("n", "<leader>p", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>p", ":NvimTreeToggle<CR>")


-- Navigate buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>")
vim.keymap.set("n", "<S-h>", ":bprevious<CR>")
vim.keymap.set("n", "<Leader>q", ":Bdelete<CR>")

-- Close windows
vim.keymap.set("n", "<Leader>c", ":close<CR>")

-- Delete do not go to register
vim.keymap.set("n", "x", '"_x')

-- Increment and Decrement
vim.keymap.set("n", "<Leader>+","<C-a>")
vim.keymap.set("n", "<Leader>-","<C-x>")

-- Move text up and down
vim.keymap.set("n", "<A-j>", "<ESC>:m .+1<CR>==gi")
vim.keymap.set("n", "<A-k>", "<ESC>:m .-2<CR>==gi")

-- No highlight
vim.keymap.set("n", "<leader>nh", ":nohl<CR>")

-- Window management
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- split vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=") -- make split equal width
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- close window
vim.keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- Tab management
vim.keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- Insert -- 
-- jk and kj is faster
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("i", "kj", "<ESC>")

-- Visual --
-- Stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Move text up and down
vim.keymap.set("v", "<A-j>", ":m .+1<CR>==")
vim.keymap.set("v", "<A-k>", ":m .-2<CR>==")
vim.keymap.set("v", "p", '"_dP')

-- Visual Block -- 
-- Move text up and down
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv")
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv")
vim.keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv")
vim.keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv")
