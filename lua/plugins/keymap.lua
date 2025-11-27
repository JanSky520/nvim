return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
    config = function()
        require("which-key").add({
            {"<leader>f", group = "文件操作"},
            {"<leader>g", group = "跳转操作"},
            {"<leader>b", group = "缓冲区操作"},
            {"<leader>c", group = "代码操作"},
        })
    end,
    keys = {
        { "<leader>q", "<cmd>q<cr>", desc = "退出" },
        { "<leader>w", "<cmd>w<cr>", desc = "保存" },
        { "<leader>h", "<cmd>vsp<cr>", desc = "右侧分割窗口", mode = "n" },

        { "dd", "dd", desc = "删除当前行", mode = "n" },
        { "dh", "dd", desc = "删除当前行", mode = "n" },
    },
}
