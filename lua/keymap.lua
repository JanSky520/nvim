require("which-key").add({
    {"<leader>f", group = "文件"},
    {"<leader>ff", "<cmd>lua Snacks.picker.files()<cr>", desc = "查找文件", mode = "n"},
    {"<leader>fs", "<cmd>lua Snacks.picker.grep()<cr>", desc = "查找关键字", mode = "n"},
    {"<leader>fh", "<cmd>lua Snacks.picker.help()<cr>", desc = "查找帮助", mode = "n"},
    {"<leader>fp", "<cmd>lua Snacks.picker.projects()<cr>", desc = "查找项目", mode = "n"},
    {"<leader>fr", "<cmd>lua Snacks.picker.recent()<cr>", desc = "查找最近", mode = "n"},
    {"<leader>fg", "<cmd>lua Snacks.lazygit()<cr>", desc = "git 操作", mode = "n"},

    {"<leader>s", group = "窗口"},
    {"<leader>sr", "<cmd>vsp<cr>", desc = "右侧分割窗口", mode = "n"},
    {"<leader>sc", "<cmd>close<cr>", desc = "关闭当前窗口", mode = "n"},

    {"<leader>q", "<cmd>q<cr>", desc = "退出", mode = "n"},
    {"<leader>w", "<cmd>w<cr>", desc = "保存", mode = "n"},
})
