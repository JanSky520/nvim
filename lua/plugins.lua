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
    {'neoclide/coc.nvim', branch = 'release'},
    {"JuanZoran/Trans.nvim",build = function () require'Trans'.install() end,dependencies = { 'kkharji/sqlite.lua' }},
    {"nvim-tree/nvim-web-devicons"},
    {'akinsho/bufferline.nvim', requires = 'nvim-tree/nvim-web-devicons'},
    {"nvim-tree/nvim-tree.lua", requires = {"nvim-tree/nvim-web-devicons"}},
    { "nvim-lualine/lualine.nvim", requires = { "nvim-tree/nvim-web-devicons" } },
    { 'voldikss/vim-floaterm' },
    { 'tpope/vim-dadbod' },
    { 'kristijanhusak/vim-dadbod-ui'},
    {'ZSaberLv0/ZFVimIM'},
    {'ZSaberLv0/ZFVimJob'},
    {'ZSaberLv0/ZFVimIM_pinyin'},
    { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

})


