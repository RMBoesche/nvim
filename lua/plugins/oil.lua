return {
  'stevearc/oil.nvim',
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup {
      keymaps = {
        ["<C-h>"] = false,
        ["<C-s>"] = false,
        ["<C-l>"] = false,
        ["<M-h>"] = { "actions.select", opts = { vertical = true }, desc = "Open the entry in a vertical split" },
        ["<M-v>"] = { "actions.select", opts = { horizontal = true }, desc = "Open the entry in a horizontal split" },
      },
      view_options = {
        show_hidden = true,
      },
    }
  end,
}
