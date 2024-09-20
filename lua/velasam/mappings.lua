-- CTRL + S to save
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<ESC>:w<CR>", { desc = "Save file" })

-- move with shift and J or K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ctrl d and ctrl u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

--stay in middle of screen when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", '"_dP')

--note: I love :%s/before/after/gc

--nvim tree keymaps
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { desc = "Toggle Tree" })

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

--telescope keymaps
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[F]ind [F]ile" })
vim.keymap.set("n", "<leader>fw", builtin.live_grep, { desc = "[F]ind [W]ord" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "[F]ind [B]uffer" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "[F]ind [H]elp" })
vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Find File but like VScode" })

--markdown and plantuml
vim.keymap.set("n", "<leader>md", ":MarkdownPreview<CR>", { desc = "Preview Markdown in browser" })
vim.keymap.set("n", "<leader>puml", ":PlantumlOpen<CR>", { desc = "Open plantuml in browser" })

--harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
vim.keymap.set("n", "ma", mark.add_file, { desc = "add a file to marks" })
vim.keymap.set("n", "mm", ui.toggle_quick_menu, { desc = "toggle quick menu" })

vim.keymap.set("n", "mh", function()
	ui.nav_file(1)
end)

vim.keymap.set("n", "mj", function()
	ui.nav_file(2)
end)

vim.keymap.set("n", "mk", function()
	ui.nav_file(3)
end)

vim.keymap.set("n", "ml", function()
	ui.nav_file(4)
end)

for i = 1, 9 do
	vim.keymap.set("n", "m" .. i, function()
		ui.nav_file(i)
	end)
end

vim.keymap.set("n", "mi", ui.nav_next, { desc = "next mark" })
vim.keymap.set("n", "mo", ui.nav_prev, { desc = "previous mark" })
--harpoon end

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", "")
vim.keymap.set("n", "<right>", "")
vim.keymap.set("n", "<up>", "")
vim.keymap.set("n", "<down>", "")

-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
-- vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
