return {
	"folke/which-key.nvim",
	"folke/lazydev.nvim",
	{ "numToStr/Comment.nvim", opts = {} },
	{ "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },
	{ "norcalli/nvim-colorizer.lua" },
	{ "lewis6991/gitsigns.nvim" },
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{ "windwp/nvim-ts-autotag" },
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
		config = function()
			require("ibl").setup()
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({
				update_focused_file = {
					enable = true,
				},
			})
		end,
	},
	{ require("velasam.plugins.telescope") },
	{ require("velasam.plugins.mason") },
	{ require("velasam.plugins.cmp") },
	{ require("velasam.plugins.treesitter") },
}
