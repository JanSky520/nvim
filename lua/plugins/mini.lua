require('mini.icons').setup()
require('mini.tabline').setup()
require('mini.statusline').setup()
require('mini.pairs').setup()
require('mini.diff').setup()
require('mini.git').setup()
require('mini.comment').setup()
require('mini.operators').setup()
require('mini.cursorword').setup()
require('mini.map').setup({
    window = {
        focusable = true,
        side = 'right',
        width = 20,
        winblend = 50,
    },
})
