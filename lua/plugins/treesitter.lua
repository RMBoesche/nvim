return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
		event = "VeryLazy",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "markdown", "markdown_inline", "c", "cpp", "go", "lua", "python", "rust", "perl" , "vimdoc"},
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
}
