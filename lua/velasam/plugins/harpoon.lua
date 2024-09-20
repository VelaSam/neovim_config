return {
	"ThePrimeagen/harpoon",
	config = function()
		require("harpoon").setup({

			save_on_toggle = false,
			save_on_change = true,
			excluded_filetpes = { "harpoon" },
			mark_branch = true,

			tabline = false,
			tabline_prefix = "    ",
			tabline_suffix = "    ",
		})

		require("telescope").load_extension("harpoon")
	end,
}
