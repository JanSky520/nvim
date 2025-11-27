return {
    {   -- lsp 模块配置 ---------------------------------------------------------------------------
        "mason-org/mason.nvim",
        event = "VeryLazy",
        opts = {},
        config = function(_, opts)
            require("mason").setup(opts)

            vim.lsp.enable "lua_ls"
            vim.lsp.enable "clangd"
            vim.lsp.enable "marksman"

            vim.diagnostic.config {
                update_in_insert = true,                                            -- 实时更新虚拟文本
                underline = true,
                virtual_text = {
                    prefix = "💡",                                                  -- 可以自定义前缀
                    spacing = 4,                                                    -- 可以在诊断前添加空格
                },
                signs = {
                    text = {                                                        -- 设置诊断符号
                        [vim.diagnostic.severity.ERROR] = "",
                        [vim.diagnostic.severity.WARN] = "",
                        [vim.diagnostic.severity.INFO] = "",
                        [vim.diagnostic.severity.HINT] = "",
                    },
                }
            }

            vim.lsp.inlay_hint.enable(true)                                         -- lsp 内联提示
        end,
    },

    {   -- 补全配置 --------------------------------------------------------------------------------
        "saghen/blink.cmp",
        version = "1.*",
        event = {"InsertEnter", "CmdlineEnter"},         -- 在插入模式和命令行模式启用
        opts = {
            cmdline = {
                keymap = { preset = "super-tab" },       -- 命令行 TAB 补全
                completion = {
                    menu = {auto_show = true}            -- 命令行补全菜单
                }
            },
            completion = {
                menu = { border = 'single' },            -- 补全边框
                documentation = {
                    auto_show = true,                    -- 文档显示
                    auto_show_delay_ms = 50,             -- 延迟加载
                    window = { border = 'single' }       -- 文档边框
                },
                ghost_text = { enabled = true },         -- 虚拟补全
            },
            sources = {
                default = { 'lsp', 'path', 'buffer' },   -- 设置补全源
            },
            signature = {
                enabled = true,
                window = { border = 'single' }
            },
            keymap = { preset = "super-tab" },           -- 设置 TAB 补全
        }
    },

    {
        "lewis6991/hover.nvim",
        config = function ()
            require('hover').config({
                preview_opts = {
                    border = 'single'
                },
            })
        end,
        keys = {
            vim.keymap.set('n', 'K', function() require('hover').open() end, { desc = "lsp 悬浮信息" }),
            vim.keymap.set('i', '<a-k>', function() require('hover').open() end, { desc = "lsp 悬浮信息" }),
        },
    },

    {   -- 自动匹配括号 -----------------------------------------------------------------------------
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts = {}
    }
}
