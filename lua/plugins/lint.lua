return {
  "mfussenegger/nvim-lint",
  event = "VeryLazy",
  config = function()
    require("lint").linters_by_ft = {
      lua = { "selene" },
      sh = { "shellcheck" },
      bash = { "shellcheck" },
    }

    vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
      group = vim.api.nvim_create_augroup("Linting", { clear = true }),
      callback = function()
        require("lint").try_lint()
      end,
    })
  end,
}
