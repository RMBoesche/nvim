return {
  "mfussenegger/nvim-lint",
  event = "VeryLazy",
  config = function()
    require("lint").linters_by_ft = {
      lua = { "selene" },
      python = { "pylint", "ruff" },
      sh = { "shellcheck" },
      bash = { "shellcheck" },
    }

    vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "BufEnter", "CursorHold" }, {
      group = vim.api.nvim_create_augroup("Linting", { clear = true }),
      callback = function()
        require("lint").try_lint()
      end,
    })
  end,
}
