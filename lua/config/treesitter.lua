require'nvim-treesitter.configs'.setup {

    ensure_installed = { "c", "lua", "vim", "json", "python" },

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },

    rainbow = {
        enable = true,
        --         -- Which query to use for finding delimiters
        query = 'rainbow-parens',
        -- Highlight the entire buffer all at once
        strategy = require('ts-rainbow').strategy.global,
    }

}
