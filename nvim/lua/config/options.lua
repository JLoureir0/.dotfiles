-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = ","

local opt = vim.opt

opt.colorcolumn = "120" -- comma-separated list of screen columns that are highlighted with ColorColumn |hl-ColorColumn|.
opt.conceallevel = 0 -- Determine how text with the "conceal" syntax attribute |:syn-conceal| is shown
opt.shiftwidth = 4 -- the number of spaces inserted for each indentation
opt.tabstop = 4 -- number of spaces for a tab
opt.autoindent = true

vim.g.lazyvim_python_lsp = "basedpyright"
