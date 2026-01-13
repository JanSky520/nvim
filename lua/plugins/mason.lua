return {
    "mason-org/mason.nvim",
    event = "VeryLazy",
    opts = {},
    config = function(_, opts)
            require("mason").setup(opts)

            vim.lsp.enable "lua_ls"
            vim.lsp.enable "clangd"
            vim.lsp.enable "marksman"

            vim.diagnostic.config {
                update_in_insert = true,                                            -- 实时更新虚拟文本
                underline = true,
                virtual_text = {
                    prefix = "💡",                                                  -- 可以自定义前缀
                    spacing = 4,                                                    -- 可以在诊断前添加空格
                },
                signs = {
                    text = {                                                        -- 设置诊断符号
                        [vim.diagnostic.severity.ERROR] = "",
                        [vim.diagnostic.severity.WARN] = "",
                        [vim.diagnostic.severity.INFO] = "",
                        [vim.diagnostic.severity.HINT] = "",
                    },
                }
            }

        vim.lsp.inlay_hint.enable(true)                                         -- lsp 内联提示
    end
}
