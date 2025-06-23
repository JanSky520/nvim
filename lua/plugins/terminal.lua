require("toggleterm").setup({
    size = function(term)
        if term.direction == "horizontal" then
            return 8
        elseif term.direction == "vertical" then
            return math.floor(vim.o.columns * 0.4)
        else
            return 20
        end
    end,

    open_mapping = [[<f2>]],
    direction = "horizontal",

    float_opts = {
        border = "double",
        width = function() 
            return math.floor(vim.o.columns * 0.8)
        end,
        height = function()
            return math.floor(vim.o.lines * 0.7)
        end,
        winblend = 10,
        title_pos = "center",
    },

    start_in_insert = true,
    close_on_exit = true,
    hide_numbers = true,
    auto_scroll = true,
})

local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({
  cmd = "lazygit",
  dir = "git_dir",
  direction = "float",
  float_opts = {
    border = "double",
  },
  -- function to run on opening the terminal
  on_open = function(term)
    vim.cmd("startinsert!")
    vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
  end,
  -- function to run on closing the terminal
  on_close = function(term)
    vim.cmd("startinsert!")
  end,
})

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
