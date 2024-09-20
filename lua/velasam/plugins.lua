return {
	"folke/which-key.nvim",
	"folke/lazydev.nvim",
	{ "rose-pine/neovim", name = "rose-pine" },
	{ "EdenEast/nightfox.nvim" },
	{ "numToStr/Comment.nvim", opts = {} },
	{ "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },
	{ "norcalli/nvim-colorizer.lua" },
	{ require("velasam.plugins.gitsigns") },
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
	{
		"nanozuki/tabby.nvim",
		-- event = 'VimEnter', -- if you want lazy load, see below
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			local filename = require("tabby.filename")
			local util = require("tabby.util")

			local cwd = function()
				return "  " .. vim.fn.fnamemodify(vim.fn.getcwd(), ":t") .. " "
			end

			-- ֍ ֎ 

			local line = {
				hl = "TabLineFill",
				layout = "active_wins_at_tail",
				head = {
					{ cwd, hl = "EdenTLHead" },
					{ "", hl = "EdenTLHeadSep" },
				},
				active_tab = {
					label = function(tabid)
						return {
							"  " .. tabid .. " ",
							hl = "EdenTLActive",
						}
					end,
					left_sep = { "", hl = "EdenTLActiveSep" },
					right_sep = { "", hl = "EdenTLActiveSep" },
				},
				inactive_tab = {
					label = function(tabid)
						return {
							"  " .. tabid .. " ",
							hl = "EdenTLBoldLine",
						}
					end,
					left_sep = { "", hl = "EdenTLLineSep" },
					right_sep = { "", hl = "EdenTLLineSep" },
				},
				top_win = {
					label = function(winid)
						return {
							"  " .. filename.unique(winid) .. " ",
							hl = "TabLine",
						}
					end,
					left_sep = { "", hl = "EdenTLLineSep" },
					right_sep = { "", hl = "EdenTLLineSep" },
				},
				win = {
					label = function(winid)
						return {
							"  " .. filename.unique(winid) .. " ",
							hl = "TabLine",
						}
					end,
					left_sep = { "", hl = "EdenTLLineSep" },
					right_sep = { "", hl = "EdenTLLineSep" },
				},
				tail = {
					{ "", hl = "EdenTLHeadSep" },
					{ "  ", hl = "EdenTLHead" },
				},
			}

			require("tabby").setup({ tabline = line })
		end,
	},
	{ "akinsho/toggleterm.nvim" },
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && npm install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},
	{ "weirongxu/plantuml-previewer.vim" },
	{ "tyru/open-browser.vim" },
	{ "nvim-tree/nvim-web-devicons" },
	{ require("velasam.plugins.telescope") },
	{ require("velasam.plugins.mason") },
	{ require("velasam.plugins.cmp") },
	{ require("velasam.plugins.treesitter") },
}
