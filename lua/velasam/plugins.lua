return {
	{ require("velasam.configs.treesitter") },
	{ require("velasam.lsp.mason") },
	{ require("velasam.lsp.lspconfig") },
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("bufferline").setup({})
		end,
	},
	{ "tpope/vim-sleuth", enabled = true },
	{ "numToStr/Comment.nvim", opts = {} },
	{
		"nvim-tree/nvim-tree.lua",
		config = function()
			require("nvim-tree").setup(require("velasam.configs.arborescence"))
			-- nvim tree keymaps
			vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
			vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
		end,
	},
	{ "nvim-tree/nvim-web-devicons" },
	{ require("velasam.configs.gitsigns") },
	{ require("velasam.configs.hop") },
	{ require("velasam.configs.telescope") },
	{ require("velasam.configs.themes") },
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	{ require("velasam.configs.which-key") },
	{ "stevearc/dressing.nvim", event = "VeryLazy" },
	{ require("velasam.configs.nvim-cmp") },
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
		-- this is equalent to setup({}) function
	},
	-- {
	-- 	"lukas-reineke/indent-blankline.nvim",
	-- 	main = "ibl",
	-- 	opts = {},
	-- 	config = function()
	-- 		local highlight = {
	-- 			"RainbowRed",
	-- 			"RainbowYellow",
	-- 			"RainbowBlue",
	-- 			"RainbowOrange",
	-- 			"RainbowGreen",
	-- 			"RainbowViolet",
	-- 			"RainbowCyan",
	-- 		}
	-- 		local hooks = require("ibl.hooks")
	-- 		-- create the highlight groups in the highlight setup hook, so they are reset
	-- 		-- every time the colorscheme changes
	-- 		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
	-- 			vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
	-- 			vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
	-- 			vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
	-- 			vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
	-- 			vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
	-- 			vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
	-- 			vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
	-- 		end)
	--
	-- 		vim.g.rainbow_delimiters = { highlight = highlight }
	-- 		require("ibl").setup({ scope = { highlight = highlight } })
	--
	-- 		hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
	-- 	end,
	-- },
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("velasam.configs.lualine")
			-- require("lualine").setup({
			-- 	globalstatus = true,
			-- })
		end,
	},
	{
		"gelguy/wilder.nvim",
		config = function()
			local wilder = require("wilder")
			wilder.setup({ modes = { ":", "/", "?" } })
		end,
	},
	{
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					-- Conform will run multiple formatters sequentially
					python = { "isort", "black" },
					-- Use a sub-list to run only the first available formatter
					-- javascript = { { "prettier" } },
					-- typescript = { { "prettierd", "prettier" } },
				},
			})
			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*",
				callback = function(args)
					require("conform").format({ bufnr = args.buf })
				end,
			})
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
		"andweeb/presence.nvim",
		config = function()
			require("presence").setup({
				editing_text = "Editing %s",
			})
		end,
	},
	{

		"neovim/nvim-lspconfig",
		"jose-elias-alvarez/null-ls.nvim",
		"MunifTanjim/eslint.nvim",
		config = function()
			local null_ls = require("null-ls")
			local eslint = require("eslint")

			null_ls.setup()

			eslint.setup({
				bin = "eslint", -- or `eslint_d`
				code_actions = {
					enable = true,
					apply_on_save = {
						enable = true,
						types = { "directive", "problem", "suggestion", "layout" },
					},
					disable_rule_comment = {
						enable = true,
						location = "separate_line", -- or `same_line`
					},
				},
				diagnostics = {
					enable = true,
					report_unused_disable_directives = false,
					run_on = "type", -- or `save`
				},
			})
		end,
	},
}
