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

map("t", "<C-t>", "<C-\\><C-n>:FloatermToggle<CR>", opt)
map("n", "<leader>r", ":RunCode<CR>", opt)
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
map("n", "<C-f>", ":Telescope live_grep<CR>", opt)

local pluginKeys = {}



return pluginKeys
