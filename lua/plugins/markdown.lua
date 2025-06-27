require('render-markdown').setup({
    completions = {
        lsp = { enabled = true },
        blink = { enabled = true },
    },
    heading = {
        position = "inline",
        sign = true,
        border = false,
        border_virtual = true,
    },
})
