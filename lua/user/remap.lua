-- Leader
vim.g.mapleader = " "

-- Insert --
-- C-c behave exactly like ESC
vim.keymap.set("i", "<C-c>", "<ESC>")

-- Normal --
-- Append with J better.
vim.keymap.set("n", "J", "mzJ`z")

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Better half window scroll
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Search term in the middle of the screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "nzzzv")

-- Nvim Tree 
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

-- Visual --
-- Stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Move text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "p", '"_dP')

-- Visual Block -- 
-- Move text up and down
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv")
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv")

-- Gretest remap ever
vim.keymap.set("x", "<leader>p", '"_dP')

-- The Primagean --
-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- In Lua
vim.keymap.set('n', '<Leader>L', '<Cmd>lua require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/luasnippets/"})<CR>')
