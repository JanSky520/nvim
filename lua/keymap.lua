require("which-key").add({
    {"<leader>f", group = "文件操作"},
    {"<leader>fw", "<cmd>lua Snacks.explorer()<cr>", desc = "侧边文件栏", mode = "n"},
    {"<leader>fd", "<cmd>lua Snacks.dashboard.open()<cr>", desc = "返回主界面", mode = "n"},
    {"<leader>fr", "<cmd>lua Snacks.picker.recent()<cr>", desc = "最近文件", mode = "n"},
    {"<leader>fp", "<cmd>lua Snacks.picker.projects()<cr>", desc = "项目文件", mode = "n"},
    {"<leader>fh", "<cmd>lua Snacks.picker.help()<cr>", desc = "帮助文件", mode = "n"},
    {"<leader>fs", "<cmd>lua Snacks.picker.grep()<cr>", desc = "查找关键字", mode = "n"},
    {"<leader>ff", "<cmd>lua Snacks.picker.files()<cr>", desc = "查找文件", mode = "n"},
    {"<c-/>", "<cmd>lua Snacks.terminal()<cr>", desc = "打开终端", mode = {"n", "t"}},

    {"<leader>g", group = "跳转操作"},
    {"<leader>gj", "<cmd>lua Snacks.scope.jump()<cr>", desc = "定位作用域", mode = "n"},
    {"<leader>gd", "<cmd>lua vim.lsp.buf.definition()<cr>", desc = "定位作用域", mode = "n"},
    {"<leader>gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", desc = "定位作用域", mode = "n"},

    {"<leader>b", group = "缓冲区操作"},
    {"<leader>bq", "<cmd>lua Snacks.bufdelete()<cr>", desc = "关闭当前缓冲区", mode = "n"},
    {"<leader>bo", "<cmd>lua Snacks.scratch()<cr>", desc = "打开临时缓冲区", mode = "n"},
    {"<leader>bs", "<cmd>lua Snacks.scratch.select()<cr>", desc = "选择临时缓冲区", mode = "n"},

    {"<leader>r", group = "代码操作"},
    {"<leader>rr", "<cmd>RunCode<cr>", desc = "运行代码", mode = "n"},
    {"<leader>rz", "<cmd>lua Snacks.zen()<cr>", desc = "禅意模式", mode = "n"},
    {"<leader>rd", "<cmd>lua Snacks.debug.run()<cr>", desc = "调试代码", mode = "n"},
    {"<leader>rm", "<cmd>lua MiniMap.open()<cr>", desc = "代码概览窗", mode = "n"},
    {"<leader>rn", "<cmd>lua MiniMap.close()<cr>", desc = "关闭概览窗", mode = "n"},
    {"<leader>rg", "<cmd>lua Snacks.lazygit()<cr>", desc = "git 操作", mode = "n"},

    {"<leader>q", "<cmd>q<cr>", desc = "退出", mode = "n"},
    {"<leader>w", "<cmd>w<cr>", desc = "保存", mode = "n"},
    {"<leader>h", "<cmd>vsp<cr>", desc = "右侧分割窗口", mode = "n"},
})
