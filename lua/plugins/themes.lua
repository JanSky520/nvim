vim.cmd([[colorscheme tokyonight]])

require('mini.icons').setup()

require'nvim-treesitter.configs'.setup({
    ensure_installed = {"bash", "jsonc", "latex", "html", "hyprlang", "css", "make", "nasm", "regex", "toml"},
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    sync_install = false,
    auto_install = false,
})

require('mini.tabline').setup()
require('mini.statusline').setup()
require('rainbow-delimiters.setup').setup()
require('mini.pairs').setup()
require('mini.diff').setup()
require('mini.git').setup()
require('mini.comment').setup()
