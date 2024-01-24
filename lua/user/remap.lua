-- Insert --
-- C-c behave exactly like ESC
vim.keymap.set("i", "<C-c>", "<ESC>")

-- Normal --
-- Save file
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>")

-- Quit file
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>")

-- Quit all files
vim.keymap.set("n", "<leader>Q", "<cmd>qa<CR>")

-- Append with J better.
vim.keymap.set("n", "J", "mzJ`z")

-- Toggle Relative Line Numbers
vim.keymap.set("n", "<leader>nr", "<cmd>set relativenumber!<CR>")

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Better half window scroll
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Search term in the middle of the screen
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- Navigate buffers
vim.keymap.set("n", "<S-l>", "<cmd>bnext<CR>")
vim.keymap.set("n", "<S-h>", "<cmd>bprevious<CR>")

-- Delete do not go to register
vim.keymap.set("n", "x", '"_x')

-- Increment and Decrement
vim.keymap.set("n", "<Leader>+", "<C-a>")
vim.keymap.set("n", "<Leader>-", "<C-x>")

-- Move text up and down
vim.keymap.set("n", "<A-j>", "<ESC>:m .+1<CR>==gi")
vim.keymap.set("n", "<A-k>", "<ESC>:m .-2<CR>==gi")

-- No highlight
vim.keymap.set("n", "<leader>nh", "<cmd>nohl<CR>")

-- Window management
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- split vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=") -- make split equal width
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>") -- close window
vim.keymap.set("n", "<leader>sm", "<cmd>MaximizerToggle<CR>")

-- Tab management
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>") -- open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>") -- close tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>") -- go to next tab
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>") -- go to previous tab

-- Better Replace
vim.keymap.set("n", "<leader>s", "*N")
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("v", "<leader>r", [["hy:%s/<C-r>h/<C-r>h/gI<Left><Left><left>]])
vim.keymap.set("v", "<leader>s", [["hy:let @/=@h<CR>nN]])

-- Visual --
-- Stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Move text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<leader>p", '"_dP')

-- Nvim Tree
vim.keymap.set("n", "<leader>p", "<cmd>NvimTreeToggle<CR>")

-- Visual Block --
-- Move text up and down
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv")
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv")

-- Gretest remap ever
vim.keymap.set("x", "<leader>p", '"_dP')

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- In Lua
vim.keymap.set(
	"n",
	"<Leader>L",
	'<Cmd>lua require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/luasnippets/"})<CR>'
)

-- Tmux Navigator
vim.keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>")
vim.keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>")
vim.keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>h", vim.diagnostic.setloclist)
