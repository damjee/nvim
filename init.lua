-- Disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Enable 24-bit colour
vim.opt.termguicolors = true

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
-- vim.g.maplocalleader = "\\" -- Same for `maplocalleader`

local opts = {} -- lazy.nvim options

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

require("lazy").setup("core.plugins", opts)
--require("lazy").setup({}, opts)
require("core.remaps")
require("core.settings")
