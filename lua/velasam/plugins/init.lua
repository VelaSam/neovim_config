return 
{
	{"nvim-tree/nvim-tree.lua"},
{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },

{
    "williamboman/mason.nvim"
},
	{
		"folke/which-key.nvim",
	},
        {
        "smoka7/hop.nvim",
        opts = {
            multi_windows = true,
            keys = "htnsueoaidgcrlypmbkjvx",
            uppercase_labels = true,
        },
        keys = {
            {
                "<leader>fj",
                function()
                    require("hop").hint_words()
                end,
                mode = { "n", "x", "o" },
            },
        },
    },


}
