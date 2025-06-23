require('mini.icons').setup({})
require('mini.git').setup({})
require('mini.diff').setup({})
require('mini.tabline').setup({})
require('mini.statusline').setup({})
require('mini.cursorword').setup({})
require('mini.indentscope').setup({})
require('mini.notify').setup({})
require('mini.pairs').setup({})
require('mini.completion').setup({})
require('mini.comment').setup({})
require('mini.starter').setup({
    autoopen = true,
    header = [[
        ██╗   ██╗ ██████╗  █████╗ ███████╗
        ██║   ██║██╔════╝ ██╔══██╗██╔════╝
        ██║   ██║██║  ███╗███████║███████╗
        ██║   ██║██║   ██║██╔══██║╚════██║
        ╚██████╔╝╚██████╔╝██║  ██║███████║
         ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚══════╝
         
           中国科学院沈阳计算技术研究所
    ]],
    items = nil, 
    footer = function()
        local datetime = os.date("%Y-%m-%d %A %H:%M")
        return "📅 " .. datetime .. " | NVIM v" .. vim.fn.printf("%d.%d", vim.version().major, vim.version().minor)
    end
})

local imap_expr = function(lhs, rhs)
    vim.keymap.set('i', lhs, rhs, { expr = true })
end

imap_expr('<Tab>', [[pumvisible() ? "<C-n>" : "<Tab>"]])
