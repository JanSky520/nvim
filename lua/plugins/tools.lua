return {
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts = {},
    },

    {
        "mikavilpas/yazi.nvim",
        event = "VeryLazy",
        opts = {
            open_multiple_tabs = false,
            highlight_hovered_buffers_in_same_directory = true,
            floating_window_scaling_factor = 0.7,
            yazi_floating_window_border = "rounded",
        },
        keys = {
            {
                "<leader>e",
                mode = { "n", "v" },
                "<cmd>Yazi<cr>",
                desc = "在当前文件中打开 Yazi 文件浏览器",
            },
        },
    },
}
