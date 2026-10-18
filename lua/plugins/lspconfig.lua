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

          -- Let basedpyright own hover in Python; ruff only lints/formats
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if client and client.name == "ruff" then
            client.server_capabilities.hoverProvider = false
          end
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

      -- Python: basedpyright for types/navigation, ruff for lint + import sorting
      vim.lsp.config("basedpyright", {
        settings = {
          basedpyright = {
            disableOrganizeImports = true, -- ruff does it
            analysis = {
              typeCheckingMode = "standard", -- same strictness as pyright
              diagnosticMode = "openFilesOnly",
              autoImportCompletions = true,
            },
          },
        },
      })

      -- Perl: syntax check, perlcritic and perltidy (modules in ~/perl5, see set.lua)
      vim.lsp.config("perlnavigator", {
        settings = {
          perlnavigator = {
            perlcriticEnabled = true,
            perltidyEnabled = true,
            enableWarnings = true,
          },
        },
      })

      -- Verilog/SystemVerilog: slang-server (semantics) + verible (style lint, format).
      -- Flat root_markers for the same 0.11.3 health check crash as lua_ls.
      vim.lsp.config("slang_server", { root_markers = { ".slang", ".git" } })

      -- Rust: rustup's rust-analyzer matches the installed toolchain (Mason's needs a newer one);
      -- run clippy instead of cargo check for inline lints
      vim.lsp.config("rust_analyzer", {
        settings = { ["rust-analyzer"] = { check = { command = "clippy" } } },
      })
      vim.lsp.enable("rust_analyzer")

      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "basedpyright",
          "ruff",
          "r_language_server",
          "perlnavigator",
          "tclsp",
          "slang_server",
          "verible",
          "bashls",
          "texlab",
          "marksman",
          "clangd",
        },
        -- pyright is still installed by Mason; basedpyright replaces it
        automatic_enable = { exclude = { "pyright" } },
      })
    end,
  },
}
