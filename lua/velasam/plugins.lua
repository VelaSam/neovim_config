return 
{


{
    "williamboman/mason.nvim"
},
	{"sbdchd/neoformat"},
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
