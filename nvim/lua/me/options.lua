-- :help <option>
vim.opt.backup = false
vim.opt.clipboard = "unnamedplus"
vim.opt.cmdheight = 2
-- Show the menu, even if there is only a single
-- available option. The user must select an option.
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.conceallevel = 0
vim.opt.fileencoding = "utf-8"
vim.opt.hlsearch = true
-- Ignore case when searching
vim.opt.ignorecase = true
-- Disable the mouse
vim.opt.mouse = ""
vim.opt.pumheight = 10
vim.opt.showtabline = 2
-- Make search case-sensitive when using capital
-- letters in the search string.
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.swapfile = false
-- Timeout before completing a mapped key combination
vim.opt.timeoutlen = 1000
-- Persistent undo
vim.opt.undofile = true
-- Faster refresh for completion
vim.opt.updatetime = 300
vim.opt.writebackup = false
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 4
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.shortmess:append "c"
vim.opt.termguicolors = true
