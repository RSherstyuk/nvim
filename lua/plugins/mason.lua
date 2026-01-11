return {
  "mason-org/mason.nvim",
  build = ":MasonUpdate",      -- опционально
  cmd = "Mason",
  keys = { { "<leader>lm", "<cmd>Mason<cr>", desc = "Mason" } },
  config = function()
    require("mason").setup()
  end,
}

