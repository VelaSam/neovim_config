return {
  { 'tpope/vim-sleuth', enabled = true }, -- Detect tabstop and shiftwidth automatically
  { 'numToStr/Comment.nvim', opts = {} },
  { "nvim-tree/nvim-tree.lua" },
  { "nvim-tree/nvim-web-devicons" },
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },
  { 'projekt0n/github-nvim-theme' },
  { "williamboman/mason.nvim" },
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
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = require "velasam.configs.alpha"
  },
}
