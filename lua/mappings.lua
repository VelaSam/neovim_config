require "nvchad.mappings"

M = M or {}

-- Add your mappings here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("i", ";;", ";<ESC>")
map({ "i", "v" }, "<C-s>", "<ESC>:w<CR>")

-- Add Copilot mappings
M.copilot = {
    i = {
        ["<C-l>"] = {
            function()
                vim.fn.feedkeys(vim.fn["copilot#Accept"](), "")
            end,
            "Copilot Accept",
            { replace_keycodes = true, nowait = true, silent = true, expr = true, noremap = true },
        },
    },
}
