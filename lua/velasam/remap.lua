-- CTRL + S to save 
vim.keymap.set({"n", "i", "v"}, "<C-s>", "<ESC>:w<CR>")

-- Copy to clipboard
vim.keymap.set('v', 'y', '"+y', { noremap = true, silent = true })
vim.keymap.set('n', 'Y', '"+yg_', { noremap = true, silent = true })
vim.keymap.set('n', 'y', '"+y', { noremap = true, silent = true })
vim.keymap.set('n', 'yy', '"+yy', { noremap = true, silent = true })

-- Paste from clipboard
vim.keymap.set('n', 'p', '"+p', { noremap = true, silent = true })
vim.keymap.set('n', 'P', '"+P', { noremap = true, silent = true })
vim.keymap.set('v', 'p', '"+p', { noremap = true, silent = true })
vim.keymap.set('v', 'P', '"+P', { noremap = true, silent = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

