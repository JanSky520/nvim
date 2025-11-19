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
    	{"catppuccin/nvim", name = "catppuccin", priority = 1000},
        {"folke/which-key.nvim"},
        {"HiPhish/rainbow-delimiters.nvim"},
        {"nvim-treesitter/nvim-treesitter"},
        {"MeanderingProgrammer/render-markdown.nvim"},
        {"folke/snacks.nvim", priority = 1000, lazy = false},
        {"CRAG666/code_runner.nvim", lazy = true},
        {"echasnovski/mini.nvim"},
        {"mason-org/mason.nvim"},
        {"saghen/blink.cmp", version = '1.*'},
    },
    install = { colorscheme = { "catppuccin" } },
})
