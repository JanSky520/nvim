return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
        dashboard = {
            enabled = true,
            preset = {
                pick = nil,
                keys = {
                    { icon = "🔍", key = "f", desc = "查找文件", action = ":lua Snacks.dashboard.pick('files')" },
                    { icon = "➕", key = "n", desc = "草稿文件", action = ":lua Snacks.scratch.select()" },
                    { icon = "📁", key = "r", desc = "最近文件", action = ":lua Snacks.dashboard.pick('oldfiles')" },
                    { icon = "🛠️", key = "c", desc = "配置文件", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
                    { icon = "⚙️", key = "s", desc = "系统文件", action = ":edit ~/.config/hypr/hyprland.conf" },
                    { icon = "🔧", key = "l", desc = "插件管理", action = ":Lazy sync", enabled = package.loaded.lazy ~= nil },
                    { icon = "🏃", key = "q", desc = "退出", action = ":qa" },
                },
                header = [[
        ██╗   ██╗ ██████╗  █████╗ ███████╗
        ██║   ██║██╔════╝ ██╔══██╗██╔════╝
        ██║   ██║██║  ███╗███████║███████╗
        ██║   ██║██║   ██║██╔══██║╚════██║
        ╚██████╔╝╚██████╔╝██║  ██║███████║
         ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚══════╝

         中国科学院大学沈阳计算技术研究所
                ]],
            },
            sections = {
                { section = "header" },
                { section = "keys", gap = 1, padding = 1 },
                { section = "startup" },
            },
        },
        bigfile = { enabled = true },
        image = { enable = true },
        indent = {
            enable = true,
            indent = {
                priority = 1,
                enabled = true,
                char = "╎",
                only_scope = false,
                only_current = false,
            },
            scope = {
                priority = 200,
                enabled = true,
                char = "╎",
                underline = false,
                only_current = false,
            },
            animate = {
                easing = "linear",
                duration = 15,
                fps = 120,
            }
        },
        notifier = { enabled = true },
        picker = { enabled = true },
        scope = { enabled = true },
        scratch = {
            name = "草稿",
            ft = "lua",
        },
        scroll = {
            enabled = true,
            animate = {
                duration = 15,
                easing = "linear",
                fps = 120,
            },
            animate_repeat = {
                delay = 50,
                duration = 15,
                easing = "linear",
                fps = 120,
            },
        },
        statuscolumn = {
            enabled = true,
            left = { "mark", "sign" },
            right = { "fold", "git" },
            folds = {
                open = true,
                git_hl = true,
            },
            git = { patterns = { "GitSign", "MiniDiffSign" }, },
            refresh = 10,
        },
        lazygit = {
            win = {
                backdrop = 20,
                width = 0.6,
                height = 0.7,
                border = true,
            },
        },
        terminal = {
            win = {
                position = "float",
                width = 0.6,
                height = 0.7,
                border = true,
            },
        },
        zen = {
            win = {
                backdrop = 20,
                width = 0.6,
                height = 0.7,
                border = true,
            },
        },
    },
    keys = {
        {"<leader>fd", function() Snacks.dashboard.open() end, desc = "返回主界面", mode = "n"},
        {"<leader>fr", function() Snacks.picker.recent() end, desc = "最近文件", mode = "n"},
        {"<leader>fp", function() Snacks.picker.projects() end, desc = "项目文件", mode = "n"},
        {"<leader>fh", function() Snacks.picker.help() end, desc = "帮助文件", mode = "n"},
        {"<leader>fs", function() Snacks.picker.grep() end, desc = "查找关键字", mode = "n"},
        {"<leader>ff", function() Snacks.picker.files() end, desc = "查找文件", mode = "n"},

        {"<leader>gj", function() Snacks.scope.jump() end, desc = "定位作用域", mode = "n"},
        {"<leader>gd", function() vim.lsp.buf.definition() end, desc = "定位作用域", mode = "n"},
        {"<leader>gD", function() vim.lsp.buf.declaration() end, desc = "定位作用域", mode = "n"},

        {"<leader>bo", function() Snacks.scratch() end, desc = "打开临时缓冲区", mode = "n"},
        {"<leader>bs", function() Snacks.scratch.select() end, desc = "选择临时缓冲区", mode = "n"},

        {"<leader>cz", function() Snacks.zen() end, desc = "禅意模式", mode = "n"},
        {"<leader>cg", function() Snacks.lazygit() end, desc = "git 操作", mode = "n"},

        {"<cr>", function() Snacks.debug.run() end, desc = "调试代码", mode = {"n", "x"}},
        {"<c-/>", function() Snacks.terminal() end, desc = "打开终端", mode = {"n", "t"}},
    },
}
