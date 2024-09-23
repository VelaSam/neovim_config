return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {},
	},
	"folke/lazydev.nvim",
	{ "rose-pine/neovim", name = "rose-pine" },
	{ "EdenEast/nightfox.nvim" },
	{ "numToStr/Comment.nvim", opts = {} },
	{ "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },
	{ "norcalli/nvim-colorizer.lua" },
	{ require("velasam.plugins.harpoon") },
	{ require("velasam.plugins.gitsigns") },
	{ require("velasam.plugins.hop") },
	{
		"gelguy/wilder.nvim",
		config = function()
			local wilder = require("wilder")
			wilder.setup({ modes = { ":", "/", "?" } })
		end,
	},
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
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				shell = "powershell.exe",
				float_opts = {
					border = "curved",
					width = math.ceil(vim.o.columns * 0.8),
					height = math.ceil(vim.o.columns * 0.2),
				},
			})
			vim.keymap.set("n", "<leader>t", ":ToggleTerm<CR>")
		end,
	},
	{
		"github/copilot.vim",
		config = function()
			vim.keymap.set("i", "<C-J>", 'copilot#Accept("\\<CR>")', {
				expr = true,
				replace_keycodes = false,
			})
			vim.g.copilot_no_tab_map = true
		end,
	},
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
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup({
				options = {
					icons_enabled = true,
					theme = "palenight",
					component_separators = { left = "|", right = "|" },
					section_separators = { left = "", right = "" },
					disabled_filetypes = {
						statusline = {},
						winbar = {},
					},
					ignore_focus = {},
					always_divide_middle = true,
					globalstatus = true,
					refresh = {
						statusline = 1000,
						tabline = 1000,
						winbar = 1000,
					},
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch", "diff", "diagnostics" },
					lualine_c = { "filename" },
					lualine_x = { "encoding", "fileformat", "filetype" },
					lualine_y = { "progress" },
					lualine_z = { "location" },
				},
				inactive_sections = {
					lualine_a = {},
					lualine_b = {},
					lualine_c = { "filename" },
					lualine_x = { "location" },
					lualine_y = {},
					lualine_z = {},
				},
				tabline = {},
				winbar = {},
				inactive_winbar = {},
				extensions = {},
			})
		end,
	},
	{ require("velasam.plugins.telescope") },
	{ require("velasam.plugins.mason") },
	{ require("velasam.plugins.cmp") },
	{ require("velasam.plugins.treesitter") },
}
