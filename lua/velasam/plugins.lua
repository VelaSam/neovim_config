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
	{ require("velasam.configs.alpha") },
	{ require("velasam.configs.telescope") },
	{ require("velasam.configs.themes") },
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	{ require("velasam.configs.which-key") },
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
	{ "folke/neodev.nvim" },
	{ "stevearc/dressing.nvim", event = "VeryLazy" },
	{ require("velasam.configs.nvim-cmp") },
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
		-- this is equalent to setup({}) function
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
		config = function()
			require("ibl").setup()
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			-- require("velasam.configs.lualine")
			require("lualine").setup()
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
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({})

			vim.keymap.set("n", "<leader>t", ":ToggleTerm<CR>")
			-- vim.keymap.set('i', '<leader>t', ':ToggleTerm<CR>')
			-- vim.keymap.set('t', '<leader>t', ':ToggleTerm<CR>')
		end,
	},
	{
		"tadmccorkle/markdown.nvim",
		ft = "markdown", -- or 'event = "VeryLazy"'
		opts = {
			-- configuration here or empty for defaults
		},
		config = function()
			require("markdown").setup()
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
					javascript = { { "prettierd", "prettier" } },
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
}
