vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = false

-- -- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

--system clipboard
vim.opt.clipboard = "unnamedplus"

-- Case-insensitive searching UNLESS capital or /C in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

--indents
vim.opt.tabstop = 4 -- Number of spaces a tab represents
vim.opt.softtabstop = 4 -- Number of spaces a tab represents in insert mode
vim.opt.shiftwidth = 4 -- Number of spaces to use for indentation
vim.opt.expandtab = true -- Use spaces instead of actual tab characters

vim.opt.wrap = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.cursorline = true
vim.opt.undofile = true

vim.opt.signcolumn = "yes"

vim.opt.updatetime = 250

-- time for you to do the keybinds in miliseconds
-- vim.opt.timeoutlen = 300

-- split right: <C-w> and then v
vim.opt.splitright = true
--split beloe <C-w> and then s
vim.opt.splitbelow = true

vim.opt.list = true
vim.opt.listchars = { tab = "▸ ", trail = "■", nbsp = "␣" }
vim.opt.fillchars = { eob = "~" }

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.opt.termguicolors = true

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
