return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master", -- main is an incompatible rewrite without nvim-treesitter.configs
		build = ":TSUpdate",
		event = "VeryLazy",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "markdown", "markdown_inline", "c", "cpp", "go", "lua", "python", "rust", "perl", "tcl", "verilog", "vimdoc", "bash", "regex"},
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
}
