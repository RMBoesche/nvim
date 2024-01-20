return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 0,
	config = function()
		vim.cmd.colorscheme("catppuccin")
	end,
}
