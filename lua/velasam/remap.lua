print("hello world from remap")
vim.g.mapleader = " "
vim.keymap.set({"n", "i", "v"}, "<C-s>", "<ESC>:w<CR>")

function hello()
	print("hello world")
end

