return {
  {
    "mason-org/mason.nvim",
    opts = {},
  },
  {
    -- Formatters and linters used by conform.lua and lint.lua
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "mason-org/mason.nvim" },
    event = "VeryLazy",
    opts = {
      ensure_installed = { "stylua", "ruff", "shfmt", "selene", "shellcheck", "prettierd", "clang-format" },
    },
  },
  {
    -- Neovim runtime/plugin types for lua_ls, loaded on demand
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {},
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
    },
    event = "VeryLazy",
    config = function()
      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("UserLspAttach", { clear = true }),
        callback = function(args)
          local bufnr = args.buf
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr, desc = "LSP: [g]o to [d]efinition" })
          vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = bufnr, desc = "LSP: [g]o to [D]eclaration" })
          vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = bufnr, desc = "LSP: [g]o to [r]eferences" })
          vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = bufnr, desc = "LSP: [g]o to [i]mplementation" })
          vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = bufnr, desc = "LSP: [r]e[n]ame symbol" })
          vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = bufnr, desc = "LSP: [c]ode [a]ctions" })
        end,
      })

      -- Advertise nvim-cmp's completion features (snippets etc.) to every server
      vim.lsp.config("*", { capabilities = require("cmp_nvim_lsp").default_capabilities() })

      -- Override lua_ls root_markers with a flat list to avoid a Neovim 0.11.3
      -- health check crash (health.lua:202 can't handle nested root_marker tables).
      vim.lsp.config("lua_ls", {
        root_markers = { ".luarc.json", ".luacheckrc", ".stylua.toml", ".git" },
        settings = {
          Lua = {
            runtime = { version = "LuaJIT" },
            diagnostics = { globals = { "vim" } },
            telemetry = { enable = false },
          },
        },
      })

      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "pyright",
          "r_language_server",
          "perlnavigator",
          "clangd",
          "rust_analyzer",
        },
      })
    end,
  },
}
