local opt = vim.opt
local g = vim.g

opt.mouse = "a"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

opt.number = true
opt.relativenumber = true
opt.cursorline = false

opt.swapfile = false
opt.fileformat = "unix"
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

opt.scrolloff = 7
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.clipboard = "unnamedplus"

g.clipboard = {
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

