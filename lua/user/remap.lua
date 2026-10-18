-- Insert --
-- C-c behave exactly like ESC
vim.keymap.set("i", "<C-c>", "<ESC>", { desc = "Exit insert mode" })

-- Normal --
-- Save file
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "Save file" })

-- Quit file
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit file" })

-- Quit all files
vim.keymap.set("n", "<leader>Q", "<cmd>qa<CR>", { desc = "Quit all files" })

-- Append with J better.
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines and keep cursor position" })

-- Toggle Relative Line Numbers
vim.keymap.set("n", "<leader>nr", "<cmd>set relativenumber!<CR>", { desc = "Toggle relative line numbers" })

-- Better half window scroll
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down half page and center" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up half page and center" })

-- Search term in the middle of the screen
vim.keymap.set("n", "n", "nzz", { desc = "Next search result (centered)" })
vim.keymap.set("n", "N", "Nzz", { desc = "Previous search result (centered)" })

-- Navigate buffers
vim.keymap.set("n", "<S-l>", "<cmd>bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-h>", "<cmd>bprevious<CR>", { desc = "Previous buffer" })

-- Delete do not go to register
vim.keymap.set("n", "x", '"_x', { desc = "Delete character without yanking" })

-- Increment (decrement stays on native <C-x>; <leader>- is Oil)
vim.keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })

-- Move text up and down
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<CR>==", { desc = "Move line up" })

-- Window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal width" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })
vim.keymap.set("n", "<leader>sm", "<cmd>MaximizerToggle<CR>", { desc = "Toggle maximize split" })

-- Tab management
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })

-- Better Replace
vim.keymap.set("n", "<leader>sw", "*N", { desc = "Search word under cursor" })
vim.keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace word under cursor" })
vim.keymap.set("v", "<leader>r", [["hy:%s/<C-r>h/<C-r>h/gI<Left><Left><left>]], { desc = "Replace selected text" })
vim.keymap.set("v", "<leader>s", [["hy:let @/=@h<CR>nN]], { desc = "Search selected text" })

-- Visual --
-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and reselect" })

-- Move text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
vim.keymap.set("v", "<leader>p", '"_dP', { desc = "Paste without yanking" })

-- Oil
vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "Open Oil in floating window" })
vim.keymap.set("n", "<leader>-", "<cmd>Oil<CR>", { desc = "Open Oil file browser" })

-- Gretest remap ever
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without yanking" })

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank line to system clipboard" })

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete to black hole register" })

vim.keymap.set("n", "Q", "<nop>", { desc = "Disable Ex mode" })

-- C-h/j/k/l are mapped by vim-tmux-navigator itself

-- Diagnostic keymaps ([d and ]d are Neovim defaults)
vim.keymap.set("n", "<leader>of", vim.diagnostic.open_float, { desc = "Open diagnostic float" })
vim.keymap.set("n", "<leader>ol", vim.diagnostic.setloclist, { desc = "Open diagnostic list" })

-- Drop Neovim 0.11's gr* LSP defaults so the custom gr (references) fires instantly
for _, lhs in ipairs({ "grn", "grr", "gri", "grt" }) do
	pcall(vim.keymap.del, "n", lhs)
end
pcall(vim.keymap.del, { "n", "x" }, "gra")

-- LazyGit
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Open LazyGit" })

-- Claude Code
vim.keymap.set("n", "<leader>cc", "<cmd>ClaudeCode<CR>", { desc = "Toggle Claude Code" })

-- Terminal
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
