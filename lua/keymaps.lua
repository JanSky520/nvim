vim.g.mapleader = " "
vim.g.maplocalleader = " "
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

map("n", "q", ":q<CR>", opt)
map("n", "w", ":w<CR>", opt)
map("n", "s", "", opt)
map("n", "sh", ":vsp<CR>", opt)
map("n", "sc", "<C-w>c", opt)
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)

map("n", "c", ":FloatermNew --height=0.5 --width=0.5 --autoclose=0 gcc % -o %< && ./%< <CR>", opt)
map("n", "r", ":FloatermNew --height=0.7 --width=0.6 --autoclose=2 ranger --cmd=\"cd ~\"<CR>", opt)
map("n", "db", ":FloatermNew --height=0.7 --width=0.6 --autoclose=2 vi +DBUI<CR>", opt)
map("n", "<C-t>", ":FloatermToggle<CR>", opt)
map("t", "<C-t>", "<C-\\><C-n>:FloatermToggle<CR>", opt)

vim.keymap.set('n', 'ti', '<Cmd>TranslateInput<CR>')
vim.keymap.set({'n', 'x'}, 'tt', '<Cmd>Translate<CR>')
vim.keymap.set({'n', 'x'}, 'tk', '<Cmd>TransPlay<CR>') -- 自动发音选中或者光标下的单词

map("n", "<C-m>", ":NvimTreeToggle<CR>", opt)

map("n", "m", ":CocList marketplace<CR>", opt)
map("n", "mm", ":CocCommand<CR>", opt)

local pluginKeys = {}



return pluginKeys
