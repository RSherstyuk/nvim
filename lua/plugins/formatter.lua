return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "black" },  -- или ruff_format
      go = { "goimports", "gofmt" },
      javascript = { "prettierd", "prettier" },
      typescript = { "prettierd", "prettier" },
      json = { "prettierd" },
      yaml = { "prettierd" },
      markdown = { "prettierd" },
      cpp = { "clang_format" },
      c = { "clang_format" },
      rust = { "rustfmt" },
      bash = { "shfmt" },
      cmake = { "cmakeformat" },  -- для neocmake
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,  -- fallback на vim.lsp.buf.format()
    },
    formatters = {
      prettierd = { prepend_args = { "--no-semi", "--single-quote" } },
      clang_format = { prepend_args = { "-style=Google" } },
    },
  },
}

