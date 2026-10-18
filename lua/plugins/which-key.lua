return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		spec = {
			{ "<leader>f", group = "find" },
			{ "<leader>g", group = "git" },
			{ "<leader>n", group = "numbers" },
			{ "<leader>o", group = "diagnostics" },
			{ "<leader>r", group = "rename/replace" },
			{ "<leader>s", group = "splits/search" },
			{ "<leader>t", group = "tabs" },
		},
	},
}
