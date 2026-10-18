return {
	"brianhuster/live-preview.nvim",
	cmd = "LivePreview",
	ft = "markdown",
	config = function()
		require("livepreview.config").set({
			-- explorer.exe opens the Windows default browser from WSL
			browser = vim.fn.has("wsl") == 1 and "explorer.exe" or "default",
			-- Serve from the file's folder so notes outside Neovim's cwd (e.g. the vault) work
			dynamic_root = true,
		})
		vim.keymap.set("n", "<leader>mp", "<cmd>LivePreview start<CR>", { desc = "Markdown preview" })
		vim.keymap.set("n", "<leader>mc", "<cmd>LivePreview close<CR>", { desc = "Close markdown preview" })
	end,
}
