--SETUP MY OPTIONS
require "velasam.options"

--lazy setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


--SETUP MY PLUGINS
require("lazy").setup(require("velasam.plugins"))
require("nvim-tree").setup(require("velasam.configs.nvim-tree"))
require("bufferline").setup{}


vim.api.nvim_create_autocmd({"VimEnter"}, {
  command = "NvimTreeToggle"
})
vim.api.nvim_create_autocmd({"VimEnter"}, {
  command = "Alpha"
 })

--if you want the tree to be opened went you enter, uncomment these lines

-- vim.api.nvim_create_autocmd({"VimEnter"}, {
--   command = "NvimTreeToggle"
-- })

--SETUP MY MAPPINGS
require("velasam.mappings")
vim.cmd.colorscheme "cyberdream"
-- require "velasam.configs.cyberdream"
-- vim.cmd.colorscheme "catppuccin"

