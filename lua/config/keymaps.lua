-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--duplicate selection bellow
-- vim.keymap.set("v", "<c-t>", "vmap <c-t> y`>p")
vim.keymap.set("n", "<leader>up", ":LspStop<cr>")
vim.keymap.set("n", "<leader>uP", ":LspStart<cr>")

-- ## Terminal
vim.keymap.del("t", "<C-h>")
vim.keymap.del("t", "<C-j>")
vim.keymap.del("t", "<C-k>")
vim.keymap.del("t", "<C-l>")

-- QuickTree
-- vim.keymap.set("n", "<c-t>", "<cmd>!Tree -I node_modules<cr>", { desc = "View Tree" })
