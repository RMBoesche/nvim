return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-fzf-native.nvim" },
		cmd = "Telescope",
		keys = {
			"<leader>?",
			"<leader>ff",
			"<leader>fh",
			"<leader>fw",
			"<leader>fg",
			"<leader>fd",
			"<leader>fk",
			"<leader><space>",
			"<leader>/" },
		config = function()
			local actions = require("telescope.actions")
			local builtin = require("telescope.builtin")

			require("telescope").setup({
				defaults = {
					mappings = {
						i = {
							["<C-j>"] = actions.move_selection_next,
							["<C-k>"] = actions.move_selection_previous,
							["<C-q>"] = actions.smart_send_to_qflist + actions.close,
						},
					},
					layout_strategy = "vertical",
					layout_config = {
						vertical = {
							prompt_position = "top",
						},
					},
					sorting_strategy = "ascending",
				},
			})
			-- Enable telescope fzf native, if installed
			pcall(require("telescope").load_extension, "fzf")

			-- Telescope
			vim.keymap.set("n", "<leader>?", builtin.oldfiles, { desc = "[?] Find recently opened files" })
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[F]ind [F]iles" })
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "[F]ind [H]elp" })
			vim.keymap.set("n", "<leader>fw", builtin.grep_string, { desc = "[F]ind current [W]ord" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[F]ind by [G]rep" })
			vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "[F]ind [D]iagnostics" })
			vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "[F]ind [K]eymaps" })
			vim.keymap.set("n", "<leader><space>", builtin.buffers, { desc = "[ ] Find existing buffers" })

			vim.keymap.set("n", "<leader>/", function()
				builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
					winblend = 10,
					previewer = false,
				}))
			end, { desc = "[/] Fuzzily sind in current buffer]" })
		end,
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		lazy = true,
		build = "make"
	},
}
