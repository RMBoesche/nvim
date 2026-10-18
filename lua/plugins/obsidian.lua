local vault = "/mnt/c/Users/rodri/Documents/Obsidian Vault"

return {
	"obsidian-nvim/obsidian.nvim",
	-- Load only for notes inside the vault
	event = {
		"BufReadPre " .. vault .. "/**.md",
		"BufNewFile " .. vault .. "/**.md",
	},
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		legacy_commands = false, -- use :Obsidian <subcommand>
		workspaces = {
			{ name = "Obsidian Vault", path = vault },
		},
	},
}
