vim.cmd.colorscheme "catppuccin"

require("catppuccin").setup({
    flavour = "auto",
    background = {
        light = "latte",
        dark = "mocha",
    },
})

require'nvim-treesitter.configs'.setup({
    ensure_installed = {
        "fish", "jsonc", "latex", "html", "cpp", "json",
        "css", "make", "nasm", "regex", "toml", "hyprlang", 
        "yaml"
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    sync_install = false,
    auto_install = false,
})

require('rainbow-delimiters.setup').setup()
