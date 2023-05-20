vim.g.mapleader = " "
vim.g.maplocalleader = " "
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

map("n", "q", ":q<CR>", opt)
map("n", "w", ":w<CR>", opt)
map("n", "sh", ":vsp<CR>", opt)
map("n", "sc", "<C-w>c", opt)
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)

map("n", "c", ":FloatermNew --height=0.5 --width=0.5 --autoclose=0 gcc % -o %< && ./%< <CR>", opt)
map("n", "r", ":FloatermNew --height=0.7 --width=0.6 --autoclose=2 ranger --cmd=\"cd ~\"<CR>", opt)
map("n", "db", ":FloatermNew --height=0.7 --width=0.6 --autoclose=2 vi +DBUI<CR>", opt)
map("n", "s", ":FloatermNew --height=0.5 --width=0.5 --autoclose=0 chmod +x ./% && ./% <CR>", opt)
map("n", "ls", ":Lazy sync<CR>", opt)
map("n", "ai", ":NeoAI<CR>", opt)


vim.keymap.set('n', 'ti', '<Cmd>TranslateInput<CR>')
vim.keymap.set({'n', 'x'}, 'tt', '<Cmd>Translate<CR>')
vim.keymap.set({'n', 'x'}, 'tk', '<Cmd>TransPlay<CR>') -- 自动发音选中或者光标下的单词

map("n", "<C-m>", ":NeoTreeShow<CR>", opt)
map("n", "<C-t>", ":FloatermToggle<CR>", opt)
map("t", "<C-t>", "<C-\\><C-n>:FloatermToggle<CR>", opt)
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
map("n", "<C-f>", ":Telescope live_grep<CR>", opt)

map("n", "m", ":CocList marketplace<CR>", opt)
map("n", "mm", ":CocCommand<CR>", opt)

local pluginKeys = {}

pluginKeys.cmp = function(cmp)
    return {
        -- 出现补全
        ["<A-.>"] = cmp.mapping(cmp.mapping.complete(), {"i", "c"}),
        -- 取消
        ["<A-,>"] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close()
        }),
        -- 上一个
        ["<UP>"] = cmp.mapping.select_prev_item(),
        -- 下一个
        ["<DOWN>"] = cmp.mapping.select_next_item(),
        -- 确认
        ["<CR>"] = cmp.mapping.confirm({
            select = true,
            behavior = cmp.ConfirmBehavior.Replace
        }),
        -- 如果窗口内容太多，可以滚动
        ["<C-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), {"i", "c"}),
        ["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(4), {"i", "c"}),
    }
end

return pluginKeys
