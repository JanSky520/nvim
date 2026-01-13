return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    config = function()
        require'nvim-treesitter'.install({ "make", "nasm", "toml" })
        vim.api.nvim_create_autocmd('FileType', {
            pattern = { '*' },
            callback = function() vim.treesitter.start() end,
        })
    end,
}
