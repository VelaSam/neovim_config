return {

    {
        "nvimdev/dashboard-nvim",
        event = "VimEnter",
        config = function()
            -- require("dashboard").setup {}

            require "configs.dashboard"
        end,
        dependencies = { { "nvim-tree/nvim-web-devicons" } },
    },
    {
        "jose-elias-alvarez/null-ls.nvim",
        event = "VeryLazy",
        opts = function()
            return require "configs.null-ls"
        end,
    },
    -- conform.nvim is a plugin that helps you to format your code
    {
        "stevearc/conform.nvim",
        event = "BufWritePre", -- uncomment for format on save
        config = function()
            require "configs.conform"
        end,
    },

    -- hop.nvim use SPC + f + j to jump to word
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

    -- copilot.vim is a plugin that helps you to use GitHub Copilot in Neovim
    {
        "github/copilot.vim",
        lazy = false,
        config = function() -- Mapping tab is already used by NvChad
            vim.g.copilot_no_tab_map = true
            vim.g.copilot_assume_mapped = true
            vim.g.copilot_tab_fallback = ""
        end,
    },

    -- mason, nvim-lspconfig, nvim-treesitter
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "lua-language-server",
                "stylua",
                "html-lsp",
                "css-lsp",
                "prettier",
                "typescript-language-server",
                "clangd",
                "clang-format",
            },
        },
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require("nvchad.configs.lspconfig").defaults()
            require "configs.lspconfig"
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim",
                "lua",
                "vimdoc",
                "html",
                "css",
                "java",
                "typescript",
                "javascript",
                "json",
                "cpp",
                "c",
            },
        },
    },
}
