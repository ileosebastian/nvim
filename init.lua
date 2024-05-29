--[[
  This file is only use to import the entire customization neovim settings
  as standalone files.
  Example: key mappings, plugins, color schemes and more...
]]
--
require("settings")
require("keymaps")

-- Initialize Lazy (package manager)
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

require("lazy").setup("plugins")
