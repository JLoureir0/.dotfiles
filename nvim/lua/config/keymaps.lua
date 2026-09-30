-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set

-- Save File
keymap("n", "<leader>fs", "<CMD>update<CR><ESC>", { desc = "Save File" })
keymap("n", "<leader>fS", ":sav %:h/", { desc = "Save File As" })
keymap("n", "<leader>fl", "<CMD>e!<CR>", { desc = "Reload file and discard local changes" })

-- Quit
keymap("n", "<leader>qQ", "<CMD>qa!<CR>", { desc = "Quit all (without save)" })

-- Buffer Scroll
keymap("n", "<C-u>", "<C-u>zz", { desc = "Scroll half a screen up (keeping cursor at the middle)" })
keymap("n", "<C-d>", "<C-d>zz", { desc = "Scroll half a screen down (keeping cursor at the middle)" })

-- Move text up and down
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move lines down" })
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move lines up" })

-- Paste without yanking
keymap("v", "p", '"_dp', { desc = "Paste without yanking" })
