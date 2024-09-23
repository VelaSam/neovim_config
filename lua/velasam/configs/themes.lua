return {
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("cyberdream").setup({
				transparent = true, -- Default: false
				italic_comments = false, -- Default: false
				hide_fillchars = true, -- Default: false
				borderless_telescope = true, -- Default: true
				terminal_colors = true, -- Default: true
				theme = { -- Default: nil
					highlights = {
						Comment = { fg = "#696969", bg = "NONE", italic = true },
					},
					colors = {
						bg = "#16181a",
						bgAlt = "#1e2124",
						bgHighlight = "#3c4048",
						fg = "#ffffff",
						grey = "#7b8496",
						blue = "#5ea1ff",
						green = "#5eff6c",
						cyan = "#5ef1ff",
						red = "#ff6e5e",
						yellow = "#f1ff5e",
						magenta = "#ff5ef1",
						pink = "#ff5ea0",
						orange = "#ffbd5e",
						purple = "#bd5eff",
					},
				},
			})
		end,
	},
	{
		"rockyzhang24/arctic.nvim",
		dependencies = { "rktjmp/lush.nvim" },
		name = "arctic",
		branch = "main",
		priority = 1000,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{ "rose-pine/neovim", name = "rose-pine" },
}
