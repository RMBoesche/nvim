return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "c", "cpp", "go", "lua", "python", "rust", "perl" },
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
}
