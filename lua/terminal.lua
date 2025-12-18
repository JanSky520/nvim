local create_float_term = function(cmd)                         -- 创建浮动窗口函数
    local buf = vim.api.nvim_create_buf(false, true)            -- 新建一个 buffer
    local file_name = vim.fn.expand("%:t")                      -- 获取文件名
    local filetype = vim.bo.filetype                            -- 获取文件类型

    if cmd == nil then cmd = vim.o.shell                        -- 当 cmd 为 nil 时默认打开终端
    elseif cmd == "code" then                                   -- 当 cmd 为 code 时执行各类代码
        if filetype == "lua" then cmd = "luajit " .. file_name
        elseif filetype == "sh" then cmd = "fish " .. file_name
        end
    end

    local width = math.floor(vim.o.columns * 0.7)               -- 设置长度，窗口总列数 * 需要的倍数
    local height = math.floor(vim.o.lines * 0.7)                -- 设置高度，窗口总行数 * 需要的倍数
    local row = math.floor((vim.o.lines - height) / 2)          -- 设置行位置居中
    local col = math.floor((vim.o.columns - width) / 2)         -- 设置列位置居中

    local win = vim.api.nvim_open_win(buf, true, {              -- 打开一个窗口显示上面的 buf
        relative = "editor",                                    -- 相对于整个 Neovim 编辑器窗口在中央显示
        width = width,                                          -- 设置长度
        height = height,                                        -- 设置高度
        row = row,                                              -- 行居中
        col = col,                                              -- 列居中
        border = "rounded",                                     -- 边框设置为圆角
        style = "minimal",                                      -- 设置为最小风格
        zindex = 99                                             -- 高层级，确保不会被其他窗口遮挡
    })

    vim.wo[win].winhl = "Normal:Normal"                         -- 设置窗口的高亮组
    vim.wo[win].winblend = 50                                   -- 设置窗口透明度
    vim.wo[win].number = false                                  -- 不显示行号
    vim.wo[win].relativenumber = false                          -- 关闭绝对行号
    vim.wo[win].signcolumn = "no"                               -- 关闭符号列
    vim.wo[win].cursorline = false                              -- 不高亮显示当前行

    vim.fn.termopen(cmd)
    vim.cmd("startinsert")                                      -- 打开终端进入插入模式

    return {                                                    -- 返回 buffer 与窗口的 ID
        win = win,
        buf = buf
    }
end

local float_term = {                                            -- 创建一个可以切换的浮动终端
    win = nil,
    buf = nil
}

local toggle_float_term = function(cmd)                                         -- 如果窗口存在且有效，就关闭它
    if float_term.win and vim.api.nvim_win_is_valid(float_term.win) then
        vim.api.nvim_win_close(float_term.win, true)
        float_term.win = nil
        float_term.buf = nil
    else
        -- 否则创建新的浮动终端
        local term = create_float_term(cmd)
        float_term.win = term.win
        float_term.buf = term.buf
    end
end

vim.keymap.set("n", "<C-/>", function() toggle_float_term() end, { desc = "打开终端" })
vim.keymap.set("t", "<C-/>", function() toggle_float_term() end, { desc = "关闭终端" })
vim.keymap.set("n", "<leader>cr", function() toggle_float_term("code") end, { desc = "执行代码" })
