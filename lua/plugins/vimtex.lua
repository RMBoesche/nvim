return {
	"lervag/vimtex",
	-- Newer VimTeX needs Neovim >= 0.12.4; v2.18 is the last release supporting 0.11
	tag = "v2.18",
	lazy = false, -- VimTeX lazy-loads itself; lazy.nvim loading breaks parts of it
	init = function()
		vim.g.vimtex_compiler_latexmk_engines = { _ = "-xelatex" }

		-- On WSL view PDFs in Windows SumatraPDF (forward search: \lv), else zathura
		local sumatra = vim.fn.glob("/mnt/c/Users/*/AppData/Local/SumatraPDF/SumatraPDF.exe", false, true)[1]
		if vim.fn.has("wsl") == 1 and sumatra then
			vim.g.vimtex_view_method = "general"
			vim.g.vimtex_view_general_viewer = vim.fn.stdpath("config") .. "/scripts/sumatra-wsl"
			vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"
		else
			vim.g.vimtex_view_method = "zathura_simple"
		end
		vim.g.vimtex_view_forward_search_on_start = false

		vim.g.vimtex_toc_config = {
			mode = 1,
			fold_enable = 0,
			hide_line_numbers = 1,
			resize = 0,
			refresh_always = 1,
			show_help = 0,
			show_numbers = 1,
			split_pos = "leftabove",
			split_width = 30,
			tocdepth = 3,
			indent_levels = 1,
			todo_sorted = 1,
		}
	end,
}
