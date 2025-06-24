return {
    {
        "folke/tokyonight.nvim",
        event = "VeryLazy",
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme tokyonight]])
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        event = "VeryLazy",
        main = "nvim-treesitter.configs",
        opts = {
            ensure_installed = {"latex", "html", "hyprlang", "css", "make", "nasm"},
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            sync_install = false,
            auto_install = false,
        }
    },

    {
        "HiPhish/rainbow-delimiters.nvim",
        event = "VeryLazy",
    },

    {
        "echasnovski/mini.statusline",
        event = "VeryLazy",
        opts = {
            use_icons = true,
        },
    },

    {
        "echasnovski/mini.tabline",
        event = "VeryLazy",
        opts = {},
    },

    {
        "echasnovski/mini.icons",
        event = "VeryLazy",
        opts = {},
    },
}
