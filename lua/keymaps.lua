
vim.g.mapleader = " "

local set_keymap = vim.keymap.set;

set_keymap("v", "J", ":m '>+1<CR>gv=gv")
set_keymap("v", "K", ":m '<-2<CR>gv=gv")

set_keymap("n", "<leader>w", ":w<CR>")
set_keymap("n", "<leader>d", ":bd<CR>")
set_keymap("n", "<leader>q", ":q<CR>")
set_keymap("n", "<leader>Q", ":qa<CR>")
set_keymap("n", "<leader>h", ":nohlsearch<CR>")

set_keymap("n", "<C-H>", "<C-W>h")
set_keymap("n", "<C-J>", "<C-W>j")
set_keymap("n", "<C-K>", "<C-W>k")
set_keymap("n", "<C-L>", "<C-W>l")

set_keymap("i", "jj", "<Esc>")

