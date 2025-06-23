vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

map("n", "<leader>q", ":q<CR>", opt)
map("n", "<leader>w", ":w<CR>", opt)
map("n", "sh", ":vsp<CR>", opt)
map("n", "sc", "<C-w>c", opt)
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)

local pluginKeys = {}



return pluginKeys
