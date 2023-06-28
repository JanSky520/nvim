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
    {'akinsho/bufferline.nvim', dependencies = 'nvim-tree/nvim-web-devicons'},
    { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
    { 'voldikss/vim-floaterm' },
    { 'tpope/vim-dadbod' },
    { 'kristijanhusak/vim-dadbod-ui'},
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    {'HiPhish/nvim-ts-rainbow2'},
    { 'nvim-telescope/telescope.nvim', tag = '0.1.1', dependencies = { 'nvim-lua/plenary.nvim' }},
    { "Bryley/neoai.nvim", dependencies = { "MunifTanjim/nui.nvim",}},
    { 'glepnir/dashboard-nvim', event = 'VimEnter', dependencies = { {'nvim-tree/nvim-web-devicons'}}},

})

