return 
  {
    "smoka7/hop.nvim",
    opts = {
      multi_windows = true,
      keys = "htnsueoaidgcrlypmbkjvx",
      uppercase_labels = true,
    },
    keys = {
      {
        "<leader>fj", desc = 'hop.nvim',
        function()
          require("hop").hint_words()
        end,
        mode = { "n", "x", "o" },
      },
    },
  }
