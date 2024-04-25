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

require("lazy").setup(require("velasam.plugins"))

require("nvim-tree").setup(require("velasam.configs.nvim-tree"))

require("velasam.mappings")

vim.cmd.colorscheme "github_dark"


vim.api.nvim_create_autocmd({"VimEnter"}, {
command = "Alpha"
})
