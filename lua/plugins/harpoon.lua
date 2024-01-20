return {
  'ThePrimeagen/harpoon',
  keys = "<leader>o",
  config = function ()
    vim.keymap.set("n", "<leader>o", require("harpoon.mark").add_file)
    vim.keymap.set("n", "<leader>v", require("harpoon.ui").toggle_quick_menu)

    vim.keymap.set("n", "<leader>h", function() require("harpoon.ui").nav_file(1) end)
    vim.keymap.set("n", "<leader>j", function() require("harpoon.ui").nav_file(2) end)
    vim.keymap.set("n", "<leader>k", function() require("harpoon.ui").nav_file(3) end)
    vim.keymap.set("n", "<leader>l", function() require("harpoon.ui").nav_file(4) end)
  end
}
