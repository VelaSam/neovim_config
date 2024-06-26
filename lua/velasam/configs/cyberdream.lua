require("cyberdream").setup({
	-- Enable transparent background
	transparent = true, -- Default: false

	-- Enable italics comments
	italic_comments = false, -- Default: false

	-- Replace all fillchars with ' ' for the ultimate clean look
	hide_fillchars = true, -- Default: false

	-- Modern borderless telescope theme
	borderless_telescope = true, -- Default: true

	-- Set terminal colors used in `:terminal`
	terminal_colors = true, -- Default: true

	theme = { -- Default: nil
		highlights = {
			-- Highlight groups to override, adding new groups is also possible
			-- See `:help highlight-groups` for a list of highlight groups

			-- Example:
			Comment = { fg = "#696969", bg = "NONE", italic = true },

			-- Complete list can be found in `lua/cyberdream/theme.lua`
		},

		-- Override a color entirely
		colors = {
			-- For a list of colors see `lua/cyberdream/colours.lua`
			-- Example:
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
			-- bg = "#000000",
			-- green = "#149200",
			-- magenta = "#ff00ff",
		},
	},
})
