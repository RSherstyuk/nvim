-- lua/plugins/lsp.lua
return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "mason-org/mason.nvim",
    "mason-org/mason-lspconfig.nvim",
  },
  config = function()
    local lspconfig = require("lspconfig")
    local mason_lspconfig = require("mason-lspconfig")

    mason_lspconfig.setup({
      ensure_installed = { "lua_ls", "rust_analyzer", "pyright" },
      automatic_installation = true,
    })

    -- Простой auto-setup для всех серверов
    for _, server in ipairs(mason_lspconfig.get_installed_servers()) do
      lspconfig[server].setup({})
    end

    -- Кастомные настройки можно отдельно:
    lspconfig.lua_ls.setup({
      settings = {
        Lua = { diagnostics = { globals = { "vim" } } },
      },
    })
  end,
}

