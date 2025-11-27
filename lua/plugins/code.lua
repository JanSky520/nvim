return {
    {
        "CRAG666/code_runner.nvim",
        lazy = true,
        opts = {
            mode = "float",
            term = {
                position = "bot",
                size = 8,
            },
            float = {
                close_key = "<ESC>",
                border = "single",
                height = 0.7,
                width = 0.6,
                x = 0.5,
                y = 0.5,
                border_hl = "FloatBorder",
                float_hl = "Normal",
                blend = 0,
            },
            hot_reload = false,
            focus = true,
            startinsert = true,
            filetype = {
                c = {
                    "cd $dir &&",
                    "gcc $fileName",
                    "-o $fileNameWithoutExt &&",
                    "$dir/$fileNameWithoutExt",
                },
                cpp = {
                    "cd $dir &&",
                    "g++ $fileName",
                    "-o $fileNameWithoutExt &&",
                    "$dir/$fileNameWithoutExt",
                },
                python = "python",
                lua = "luajit",
                sh = "fish",
            }
        },
        keys = {
            {"<leader>cr", "<cmd>RunCode<cr>", desc = "运行代码", mode = "n"},
        },
    },
}
