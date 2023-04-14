-- Fat cursor
vim.opt.guicursor = ""

-- Line numbers
vim.opt.number = true 
vim.opt.relativenumber = true 

-- Tabs (spaces)
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Indents
vim.opt.smartindent = true

-- Line wraps
vim.opt.wrap = false

-- Backups
-- Turn off swap files, and use undotree
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true 

-- Searching
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Colors
vim.opt.termguicolors = true

-- Scrolling
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
-- TODO not sure whether to use this or not
-- vim.opt.isfname:append("@-@")

-- Fast updates
vim.opt.updatetime = 50
vim.opt.colorcolumn="80"

-- Leader key
vim.g.mapleader = ","
