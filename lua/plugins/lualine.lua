return {
	"hoob3rt/lualine.nvim",
	dependencies = "nvim-tree/nvim-web-devicons",
	lazy = false,
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = "auto",
				-- component_separators = { left = '', right = ''},
				-- section_separators = { left = '', right = ''},
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				disabled_filetypes = {
					statusline = { "NvimTree", "neo-tree" },
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "filename" },
				lualine_c = { "branch", "diagnostics", "diff" },
				-- lualine_x = {'encoding', 'fileformat', 'filetype'},
				lualine_x = { "progress", "filetype" },
				lualine_y = {},
				-- lualine_y = {'progress'},
				lualine_z = {},
				-- lualine_z = {'location'}
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = { "filename" },
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = { "filetype" },
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {},
		})
	end,
}
