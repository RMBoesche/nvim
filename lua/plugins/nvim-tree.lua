return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"kyazdani42/nvim-web-devicons",
	},
	cmd = {
		"NvimTreeToggle",
		"NvimTreeOpen",
		"NvimTreeClose",
		"NvimTreeRefresh",
		"NvimTreeFindFile",
	},
	config = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		require("nvim-tree").setup({
			sort_by = "case_sensitive",
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = true,
			},
		})
	end,
	enabled = false,
}
