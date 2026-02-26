return {
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup({
                update_focused_file = {
                    enable = true,
                },
            })
        end,
    },
    { require("velasam.plugins.telescope") },
    { require("velasam.plugins.treesitter") },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {},
    },
    { "akinsho/bufferline.nvim",         version = "*", dependencies = "nvim-tree/nvim-web-devicons" },
    { require("velasam.plugins.harpoon") },
}
