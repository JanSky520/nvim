vim.api.nvim_create_autocmd("InsertLeave", {
    pattern = "*",
    callback = function()
        os.execute("fcitx5-remote -c")    
    end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = {"*.asm", "*.inc"},
    callback = function()
        vim.bo.filetype = "nasm"
    end,
})
