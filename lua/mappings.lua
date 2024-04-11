require "nvchad.mappings"

-- Add your mappings here

local map = vim.keymap.set

-- Example key mappings
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Initialize M if it's not already initialized
M = M or {}

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
