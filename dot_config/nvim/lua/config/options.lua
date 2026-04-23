-- Options — carried forward from old vim config + modern defaults
local opt = vim.opt

-- Leader key (set before lazy.nvim loads)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true

-- Display
opt.wrap = false
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.signcolumn = "yes"
opt.showmode = false
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Splits
opt.splitbelow = true
opt.splitright = true

-- Persistence
opt.undofile = true
opt.swapfile = false

-- Clipboard — system clipboard integration
opt.clipboard = "unnamedplus"

-- Invisible characters
opt.list = true
opt.listchars = { tab = "▸ ", trail = "·", extends = "❯", precedes = "❮", nbsp = "±" }

-- Folding
opt.foldlevel = 99
opt.foldlevelstart = 99
