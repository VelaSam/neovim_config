-- OPTIONS
--
require("velasam.options")

--LAZY
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

require("lazy").setup({
	{
		import = "velasam.plugins",
	},
})

--MAPPINGS
require("velasam.mappings")

-- vim.api.nvim_create_autocmd({ "VimEnter" }, {
-- 	command = "NvimTreeToggle",
-- })

vim.cmd.colorscheme("rose-pine-moon")

-- vim.api.nvim_create_autocmd({ "VimEnter" }, {
-- 	command = "Alpha",
-- })
--if you want the tree to be opened went you enter, uncomment these lines
-- vim.api.nvim_create_autocmd({"VimEnter"}, {
--   command = "NvimTreeToggle"
-- })
