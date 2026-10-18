return {
  "stevearc/conform.nvim",
  event = "BufWritePre", -- Format before saving
  config = function()
    require("conform").setup({
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
      },
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "ruff_format" },
        sh = { "shfmt" },
        bash = { "shfmt" },
        javascript = { "prettierd", "prettier", stop_after_first = true },
        typescript = { "prettierd", "prettier", stop_after_first = true },
        html = { "prettierd", "prettier", stop_after_first = true },
        css = { "prettierd", "prettier", stop_after_first = true },
        json = { "prettierd", "prettier", stop_after_first = true },
        markdown = { "prettierd", "prettier", stop_after_first = true },
        rust = { "rustfmt" },
        c = { "clang_format" },
        cpp = { "clang_format" },
      },
    })

    vim.keymap.set({ "n", "v" }, "<leader>fm", function()
      require("conform").format({ async = true, lsp_format = "fallback" })
    end, { desc = "Format file" })
  end,
}
