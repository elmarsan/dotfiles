vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move lines up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- append next line to current line with leading space
vim.keymap.set("n", "J", "mzJ`z")

-- git
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
