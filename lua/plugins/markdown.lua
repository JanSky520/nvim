return {
    {   -- markdown 美化 ----------------------------------------------------------------------
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
            completions = {
                lsp = { enabled = true },
            },
            heading = {
                position = "inline",
                sign = true,
                border = false,
                border_virtual = true,
            },
        },
    },

    {   -- vimdoc 美化 ------------------------------------------------------------------------
        "OXY2DEV/helpview.nvim",
        ft = "txt",
        lazy = false,
        opts = {
            preview = {
                icon_provider = "mini",
            }
        },
    },
}
