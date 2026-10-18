return {
  "stevearc/conform.nvim",
  event = "BufWritePre", -- Format before saving
  config = function()
    require("conform").setup({
      -- Shared Perl/Tcl/Verilog repos aren't formatter-clean: format those only with <leader>fm
      format_on_save = function(bufnr)
        local manual_only = { perl = true, tcl = true, verilog = true, systemverilog = true }
        if manual_only[vim.bo[bufnr].filetype] then
          return nil
        end
        return { timeout_ms = 2000, lsp_format = "fallback" }
      end,
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "ruff_organize_imports", "ruff_format" },
        perl = { "perltidy" },
        tcl = { "tclfmt" },
        verilog = { "verible" },
        systemverilog = { "verible" },
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
