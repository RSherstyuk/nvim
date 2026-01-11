-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Установка leader перед lazy (опционально)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import плагинов из lua/plugins/
    { import = "plugins" },
  },
  install = { colorscheme = { "habamax" } },
  checker = { enabled = true },
})

vim.g.clipboard = {
	name = "win32yank",
	copy = {
		["+"] = "/home/russh/.soft/win32yank.exe -i --crlf",
		["*"] = "/home/russh/.soft/win32yank.exe -i --crlf",
	},
	paste = {
		["+"] = "/home/russh/.soft/win32yank.exe -o --lf",
		["*"] = "/home/russh/.soft/win32yank.exe -o --lf",
	},
	cache_enabled = 0,
}

require("config.neo-tree")
require("neo-tree.command").execute({ action = "close" })

