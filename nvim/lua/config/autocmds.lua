-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- make it easier to close man-files when opened inline
vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("gdscript_use_tabs", { clear = true }),
  pattern = { "gdscript" },
  callback = function(_)
    vim.opt.expandtab = false
  end,
})
