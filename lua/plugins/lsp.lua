require("mason").setup()
require("mason-lspconfig").setup()

local registry = require "mason-registry"
local function setup(name, config)
    local success, package = pcall(registry.get_package, name)
    if success and not package:is_installed() then
        package:install()
    end
    config.capabilities = require("blink.cmp").get_lsp_capabilities()
    local lsp = require("mason-lspconfig").get_mappings().package_to_lspconfig[name]
    vim.lsp.config(lsp, config)
end

setup("lua-language-server", {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
        }
    }
})
setup("clangd", {})
setup("html-lsp", {})

vim.diagnostic.config({
    update_in_insert = true,
    virtual_text = true,
})

local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

require("blink.cmp").setup({
    completion = {
        documentation = { auto_show = true },
    },
    keymap = { preset = "super-tab" },
    sources = {
        default = { "path", "buffer", "snippets", "lsp" },
    },
    appearance = {
        nerd_font_variant = 'mono'
    },
    cmdline = {
        sources = function()
            local cmd_type = vim.fn.getcmdtype()
            if cmd_type == "/" or cmd_type == "?" then
                return { "buffer" }
            end
            if cmd_type == ":" then
                return { "cmdline" }
            end
            return {}
        end,
        keymap = { preset = "super-tab" },
        completion = {
            menu = { auto_show = true },
        },
    },
    fuzzy = { implementation = "rust" }
})
