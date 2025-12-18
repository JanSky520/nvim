local function winbar()
    local mini_icons = require('mini.icons')
    local ext = vim.fn.expand('%:e')
    local icon = mini_icons.get('filetype', ext)
    local filename = icon .. " %t >"

    if filename == '' then
        vim.o.winbar = ' [No Name]'
        return
    end

    vim.o.winbar = filename
end

vim.api.nvim_create_autocmd({'BufEnter', 'BufWritePost', 'BufModifiedSet'}, {
    pattern = '*',
    callback = winbar
})
