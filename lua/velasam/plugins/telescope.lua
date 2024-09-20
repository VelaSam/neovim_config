return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		{ "nvim-tree/nvim-web-devicons" },
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				mappings = {
					i = {
						["<Tab>"] = actions.move_selection_previous,
						["<S-Tab>"] = actions.move_selection_next,
						-- ['<C-q>'] = actions.send_selected_to_qflist + actions.open_qflist, what does this even do wtf
					},
				},
			},
		})
		telescope.load_extension("fzf")
	end,
}
