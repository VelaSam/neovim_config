return {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
      "scottmckendry/cyberdream.nvim",
      lazy = false,
      priority = 1000,
      config = function()
            require("velasam.configs.cyberdream")
      end,
  },
}
