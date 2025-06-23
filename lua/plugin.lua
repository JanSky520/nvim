local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    spec = {
        {"catppuccin/nvim", name = "catppuccin", priority = 1000},
        {"mason-org/mason-lspconfig.nvim"},
        {"mason-org/mason.nvim"},
        {"neovim/nvim-lspconfig"},
        {"echasnovski/mini.nvim", version = '*'},
        {"nvim-treesitter/nvim-treesitter"},
        {"HiPhish/rainbow-delimiters.nvim"},
        {"MeanderingProgrammer/render-markdown.nvim"},
        {"akinsho/toggleterm.nvim"},
    },
    install = {colorscheme = { "catppuccin" }},
})
