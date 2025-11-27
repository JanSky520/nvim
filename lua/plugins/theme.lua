return {
    {   -- 主题配置 ------------------------------------------------------------------------------
	    "catppuccin/nvim",
	    name = "catppuccin",
	    priority = 1000,                           -- 优先级设为最高
        config = function()
            vim.cmd.colorscheme("catppuccin")      -- 设置主题
        end,
    },

    {   -- 彩虹括号 -----------------------------------------------------------------------------
        "HiPhish/rainbow-delimiters.nvim",
        config = function()
            require('rainbow-delimiters.setup').setup()    -- 插件名称非标准，单独设置启动
        end,
    },

    {   -- 代码高亮 ----------------------------------------------------------------------------
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require'nvim-treesitter.configs'.setup({                         -- 插件名称非标准，单独设置
                ensure_installed = {                                         -- 自动安装的语言
                    "fish", "jsonc", "latex", "html", "cpp", "json",
                    "css", "make", "nasm", "regex", "toml", "hyprlang",
                    "yaml"
                },
                highlight = {
                    enable = true,                                           -- 启动代码高亮
                    additional_vim_regex_highlighting = false,
                },
                sync_install = false,
                auto_install = false,
            })
        end,
    },

    {   -- 图标配置 ---------------------------------------------------------------------------
        "echasnovski/mini.icons",
        opts = {},
        config = function()
            require("mini.icons").mock_nvim_web_devicons()    -- 替换 web_devicons 的图标
        end,
    },

    {   -- 状态栏配置 -------------------------------------------------------------------------
        "nvim-lualine/lualine.nvim",
        opts = {
            options = {
                component_separators = { left = "|", right = "|"},    -- 组件之间的分隔符
                section_separators = { left = "", right = ""},        -- 区域之间的分隔符
		        globalstatus = true,                                  -- 所有窗口共享同一个状态栏
                disabled_filetypes = {
                    statusline = {},                                  -- 在这些文件类型中隐藏状态栏
                    winbar = {},                                      -- 在这些文件类型中隐藏窗口栏
                },
                refresh = {
                    statusline = 8,                                   -- 更短的刷新间隔，约120fps
                    tabline = 8,                                      -- 标签栏也保持120fps
                    winbar = 8,                                       -- 窗口栏同样流畅
                    refresh_time = 8,                                 -- 最小刷新间隔 ≈ 120fps
                },
            },
            sections = {
                lualine_a = { function() return "中国科学院大学" end },                 -- 自定义 mode 内容
                lualine_x = {
                    "encoding",                                                         -- 显示文件编码
                    {'fileformat', symbols = {unix = "🐧", dos = "🪟", mac = "🍎"}},    -- 显示操作系统图标
                    "filetype",                                                         -- 显示文件格式
                },
                lualine_y = {
                    "%L行",                                                             -- 显示文件行数
                    "location",                                                         -- 显示当前行与列
                },
                lualine_z = { {'datetime', style = "%m月%d日 %H:%M"}, },                -- 显示时间
            }
        },
    },

    {	-- 标签配置 --------------------------------------------------------------------------
        "akinsho/bufferline.nvim",
        version = "*",
        opts = {
            options = {
                tab_size = 15,                   -- 标签长度
                diagnostics = "nvim_lsp",        -- 显示 lsp 诊断
                separator_style = "thin",        -- 标签之间的分隔
                enforce_regular_tabs = true,     -- 标签自适应调整
                hover = { enabled = false, },    -- 悬停操作
            },
        },
    },
}
