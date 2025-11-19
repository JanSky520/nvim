require('code_runner').setup({
    mode = "term",
    term = {
        position = "bot",
        size = 8,
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
})
