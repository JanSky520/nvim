require("snacks").setup({
    dashboard = {
        enabled = true,
        preset = {
            pick = nil,
            keys = {
                { icon = "🔍", key = "f", desc = "查找文件", action = ":lua Snacks.dashboard.pick('files')" },
                { icon = "➕", key = "n", desc = "新建文件", action = ":ene | startinsert" },
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
    explorer = { enable = true },
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
            underline = true,
            only_current = false,
        },
        animate = {
            style = "out",
            easing = "linear",
            duration = {
                step = 10, 
                total = 500,
            },
        }
    },
    notifier = { enabled = true },
    picker = { enabled = true },
    scope = { enabled = true },
    scroll = { 
        enabled = true, 
        animate = {
            duration = { step = 10, total = 50 },
            easing = "linear",
        },
        animate_repeat = {
            delay = 50,
            duration = { step = 10, total = 50 },
            easing = "linear",
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
        git = {
            patterns = { "GitSign", "MiniDiffSign" },
        },
        refresh = 10,
    },
    zen = {
        win = {
            backdrop = 20,
            width = 0.6,
            height = 0.7,
            border = true,
        },
    }
})
