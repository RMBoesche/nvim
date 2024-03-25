return {
  "epwalsh/obsidian.nvim",
  lazy = true,
  -- ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    "BufReadPre " .. vim.fn.expand "~" .. "/documents/second-brain/**.md",
    "BufNewFile " .. vim.fn.expand "~" .. "/documents/second-brain/**.md",
  },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        path = "~/documents/second-brain/",
        name = "Second-Brain",
      },
    },

    -- see below for full list of options 👇
  },
}
