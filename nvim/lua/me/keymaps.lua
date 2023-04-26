local mapkey = vim.api.nvim_set_keymap

-- Leader key
mapkey("", "<Space>", "<Nop>", { noremap = true, silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- File explorer
mapkey("n", "<leader>ee", ":Lex<cr>", { noremap = true })

-- Buffer navigation
mapkey("n", "<leader>bh", ":bp<cr>", { noremap = true })
mapkey("n", "<leader>bl", ":bn<cr>", { noremap = true })
