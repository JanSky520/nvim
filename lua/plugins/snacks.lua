require("snacks").setup({
    dashboard = {
        enabled = true,
        preset = {
            pick = nil,
            keys = {
                { icon = " ", key = "f", desc = "查找文件", action = ":lua Snacks.dashboard.pick('files')" },
                { icon = " ", key = "n", desc = "创建文件", action = ":ene | startinsert" },
                { icon = " ", key = "g", desc = "查找文本", action = ":lua Snacks.dashboard.pick('live_grep')" },
                { icon = " ", key = "r", desc = "最近文件", action = ":lua Snacks.dashboard.pick('oldfiles')" },
                { icon = " ", key = "c", desc = "配置文件", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
                { icon = " ", key = "s", desc = "Restore Session", section = "session" },
                { icon = "󰒲 ", key = "L", desc = "插件管理", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
                { icon = " ", key = "q", desc = "退出", action = ":qa" },
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
    image = { enable = true },
    indent = { enable = true },
    lazygit = { enable = true },
    notify = {  enabled = true },
    picker = { enabled = true },
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
})

require("snacks").dim.enable({
    animate = { enabled = true },
})
