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
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    spec = {
        {"nvim-lua/plenary.nvim"},
        {"folke/tokyonight.nvim", lazy = false},
        {"echasnovski/mini.icons", version = false},
        {"folke/which-key.nvim"},
        {"HiPhish/rainbow-delimiters.nvim"},
        {"mason-org/mason.nvim"},
        {"mason-org/mason-lspconfig.nvim"},
        {"neovim/nvim-lspconfig"},
        {"nvim-treesitter/nvim-treesitter"},
        {"MeanderingProgrammer/render-markdown.nvim"},
        {"rafamadriz/friendly-snippets"},
        {"saghen/blink.cmp", version = "*"},
        {"folke/snacks.nvim"},
        {"echasnovski/mini.statusline"},
        {"echasnovski/mini.tabline"},
        {"echasnovski/mini.diff"},
        {"echasnovski/mini-git"},
        {"echasnovski/mini.pairs"},
        {"echasnovski/mini.comment"},
    },
    install = { colorscheme = { "tokyonight" } },
})
