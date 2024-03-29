-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

local opt = vim.opt

-- vim.g.autoformat = false

opt.shiftwidth = 4 -- Size of an indent
opt.tabstop = 4 -- Number of spaces tabs count for
opt.scrolloff = 9 -- Lines of context
opt.swapfile = false -- Disable swap file
opt.backup = false -- Disable backup
opt.writebackup = false -- Disable backup

opt.colorcolumn = "120" -- Line length marker
