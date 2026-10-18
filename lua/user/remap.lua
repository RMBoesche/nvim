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

-- Increment (decrement stays on native <C-x>; <leader>- is Oil)
vim.keymap.set("n", "<leader>+", "<C-a>")

-- Move text up and down
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<CR>==")
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<CR>==")

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
vim.keymap.set("n", "<leader>sw", "*N")
vim.keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
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

-- Oil
vim.keymap.set("n", "-", "<cmd>Oil --float<CR>")
vim.keymap.set("n", "<leader>-", "<cmd>Oil<CR>")

-- Gretest remap ever
vim.keymap.set("x", "<leader>p", '"_dP')

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")

-- C-h/j/k/l are mapped by vim-tmux-navigator itself

-- Diagnostic keymaps ([d and ]d are Neovim defaults)
vim.keymap.set("n", "<leader>of", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>ol", vim.diagnostic.setloclist)

-- Drop Neovim 0.11's gr* LSP defaults so the custom gr (references) fires instantly
for _, lhs in ipairs({ "grn", "grr", "gri", "grt" }) do
	pcall(vim.keymap.del, "n", lhs)
end
pcall(vim.keymap.del, { "n", "x" }, "gra")

-- LazyGit
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>")
