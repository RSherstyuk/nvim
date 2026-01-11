return {
  "rebelot/kanagawa.nvim",
  priority = 1000,   
  opts = {
    theme = "dragon",  
    background = {
      dark = "dragon",
      light = "lotus",  
    },
    transparent = false,  
    dimInactive = false,
    styles = {
      sidebars = "dark",
      floats = "dark",
    },
  },
  config = function(_, opts)
    require("kanagawa").setup(opts)
    vim.cmd("colorscheme kanagawa-dragon")
  end,
}

