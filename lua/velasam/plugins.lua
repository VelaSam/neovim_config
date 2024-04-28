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
  {
      "scottmckendry/cyberdream.nvim",
      lazy = false,
      priority = 1000,
      config = function()
            require("velasam.configs.cyberdream")
      end,
  },
}
