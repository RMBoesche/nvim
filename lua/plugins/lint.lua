return {
  "mfussenegger/nvim-lint",
  event = "VeryLazy",
  config = function()
    -- sh/bash: shellcheck runs inside bashls (lspconfig.lua)
    require("lint").linters_by_ft = {
      lua = { "selene" },
    }

    vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
      group = vim.api.nvim_create_augroup("Linting", { clear = true }),
      callback = function(args)
        -- Run from the file's project root so linters find their config (e.g. selene.toml)
        -- even when Neovim was started elsewhere
        local root = vim.fs.root(args.buf, { "selene.toml", ".git" })
        require("lint").try_lint(nil, { cwd = root })
      end,
    })
  end,
}
