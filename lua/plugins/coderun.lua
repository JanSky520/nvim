require('code_runner').setup({
    mode = "term",
    hot_reload = true,
    focus = true,
    startinsert = true,
    insert_prefix = "",
    term = {
        position = "bot",
        size = 8,
    },

    filetype = {
        c = {
            "cd $dir &&",
            "clang $fileName",
            "-o $fileNameWithoutExt &&",
            "$dir/$fileNameWithoutExt",
        },
        cpp = {
            "cd $dir &&",
            "clang $fileName",
            "-o $fileNameWithoutExt &&",
            "$dir/$fileNameWithoutExt",
        },
        python = "python -u",
        sh = "zsh",
    }
})
