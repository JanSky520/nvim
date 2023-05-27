local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "

require("lazy").setup({
	
    {'folke/tokyonight.nvim'},
    {"JuanZoran/Trans.nvim",build = function () require'Trans'.install() end,dependencies = { 'kkharji/sqlite.lua' }},
    {'akinsho/bufferline.nvim', dependencies = 'nvim-tree/nvim-web-devicons'},
    { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
    { 'voldikss/vim-floaterm' },
    { 'tpope/vim-dadbod' },
    { 'kristijanhusak/vim-dadbod-ui'},
    {'ZSaberLv0/ZFVimIM'},
    {'ZSaberLv0/ZFVimJob'},
    {'ZSaberLv0/ZFVimIM_pinyin'},
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    {'HiPhish/nvim-ts-rainbow2'},
    { 'nvim-telescope/telescope.nvim', tag = '0.1.1', dependencies = { 'nvim-lua/plenary.nvim' }},
    { "Bryley/neoai.nvim", dependencies = { "MunifTanjim/nui.nvim",}},
    { 'glepnir/dashboard-nvim', event = 'VimEnter', dependencies = { {'nvim-tree/nvim-web-devicons'}}},

    { "neovim/nvim-lspconfig" },
    { "williamboman/mason.nvim", build = ":MasonUpdate" },
    { "williamboman/mason-lspconfig.nvim"},
    {"hrsh7th/nvim-cmp"},
    {"hrsh7th/vim-vsnip"},
    {"hrsh7th/cmp-vsnip"},
    {"hrsh7th/cmp-nvim-lsp"},
    {"hrsh7th/cmp-buffer"},
    {"hrsh7th/cmp-path"},
    {"hrsh7th/cmp-cmdline"},
    {"rafamadriz/friendly-snippets"},
    {"onsails/lspkind-nvim"};

})

