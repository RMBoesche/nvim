return {
	"L3MON4D3/LuaSnip", --snippet engine
	build = "make install_jsregexp",
	dependencies = "rafamadriz/friendly-snippets",
	event = "InsertEnter",
	config = function()
		require("luasnip").config.set_config({ -- Setting LuaSnip config

			-- Enable autotriggered snippets
			enable_autosnippets = true,

			-- Use Tab (or some other key if you prefer) to trigger visual selection
			store_selection_keys = "<Tab>",
		})

		local snippets_path = "~/.config/nvim/lua/user/luasnippets/"

		require("luasnip.loaders.from_vscode").lazy_load()
		require("luasnip.loaders.from_lua").lazy_load({ paths = { snippets_path } })

		vim.cmd([[
    " Use Tab to expand and jump through snippets
    imap <silent><expr> <Tab> luasnip#expandable() ? '<Plug>luasnip-expand-snippet' : '<Tab>'
    ]])
	end,
}
