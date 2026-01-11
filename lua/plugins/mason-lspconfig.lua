return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = { "mason-org/mason.nvim" },
  opts = {
    ensure_installed = { "lua_ls", "rust_analyzer", "pyright" },
    automatic_installation = true,
  },
  config = function(_, opts)
    require("mason-lspconfig").setup(opts)
  end,
}

