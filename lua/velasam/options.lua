vim.g.mapleader = " "
vim.g.maplocalleader = ' '

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

--system clipboard
vim.opt.clipboard = 'unnamedplus'

-- Case-insensitive searching UNLESS capital or /C in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.breakindent = true

vim.wo.relativenumber = true


-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- this is a test because I am not sure what autocmd does but it looks cool
vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = {"*.c", "*.h"},
  command = "echo 'Entering a C or C++ file'",
})

