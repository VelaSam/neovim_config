return {
  {require "velasam.configs.treesitter"},
  { 'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup{}
    end,
  },
  { 'tpope/vim-sleuth', enabled = true },
  { 'numToStr/Comment.nvim', opts = {} },
  { "nvim-tree/nvim-tree.lua",
    config = function()
      require("nvim-tree").setup(require("velasam.configs.nvim-tree"))
    end
  },
  { "nvim-tree/nvim-web-devicons" },
  {require "velasam.configs.gitsigns"},
  {require "velasam.configs.hop"},
  {require "velasam.configs.alpha"},
  {require "velasam.configs.telescope"},
  {require "velasam.configs.themes"},
  {'norcalli/nvim-colorizer.lua',
    config = function()
      require'colorizer'.setup()
    end
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  {"folke/neodev.nvim"},
  {"stevearc/dressing.nvim",
    event = "VeryLazy",
  },
}
