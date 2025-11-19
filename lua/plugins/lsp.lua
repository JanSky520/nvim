require("mason").setup()

vim.lsp.enable "lua_ls"
vim.lsp.enable "clangd"

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("lsp-attach", {clear = true}),
    callback = function(event)
        local client = vim.lsp.get_client_by_id(event.data.client_id)

        local signs = {
            Error = "",
            Warn = "",
            Info = "",
            Hint = "",
        }

        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
        end

        vim.diagnostic.config {
            virtual_text = true,
            signs = true,
            update_in_insert = true,
        }

        vim.lsp.inlay_hint.enable(true)
    end,
})

require("blink.cmp").setup({
    cmdline = {
        keymap = { preset = "super-tab" },
        completion = {
            menu = {auto_show = true}
        }
    },

    completion = {
        menu = { border = 'single' },
        documentation = {
            auto_show = true,
            auto_show_delay_ms = 50,
            window = { border = 'single' }
        },
        ghost_text = { enabled = true },
    },
    sources = {
        default = { 'lsp', 'path', 'buffer' },
    },
    signature = {
        enabled = true,
        window = { border = 'single' }
    },
    keymap = { preset = "super-tab" },
})
