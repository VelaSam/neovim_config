return {
  { require "velasam.configs.treesitter" },
  { require "velasam.lsp.mason" },
  { require "velasam.lsp.lspconfig" },
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
      -- nvim tree keymaps
      vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>')
      vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
    end
  },
  { "nvim-tree/nvim-web-devicons" },
  { require "velasam.configs.gitsigns" },
  { require "velasam.configs.hop" },
  { require "velasam.configs.alpha" },
  { require "velasam.configs.telescope" },
  { require "velasam.configs.themes" },
  { 'norcalli/nvim-colorizer.lua',
    config = function()
      require'colorizer'.setup()
    end
  },
  { require "velasam.configs.which-key" },
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  { "folke/neodev.nvim" },
  { "stevearc/dressing.nvim",
    event = "VeryLazy",
  },
  { require "velasam.configs.nvim-cmp" },
  { 'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
  },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {},
    config = function()
      require("ibl").setup()
    end
  },
  { 'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
      -- require("velasam.configs.lualine")
      require("lualine").setup()
    end
  },
  { 'gelguy/wilder.nvim',
    config = function()
      local wilder = require('wilder')
      wilder.setup({ modes = {':', '/', '?'}})
    end,
  },
  { 'akinsho/toggleterm.nvim', version = "*",
    config = function ()
      require("toggleterm").setup{}

      vim.keymap.set('n', '<leader>t', ':ToggleTerm<CR>')
      vim.keymap.set('i', '<leader>t', ':ToggleTerm<CR>')
      -- vim.keymap.set('t', '<leader>t', ':ToggleTerm<CR>')
    end
  },
  { "tadmccorkle/markdown.nvim",
    ft = "markdown", -- or 'event = "VeryLazy"'
    opts = {
      -- configuration here or empty for defaults
    },
    config = function ()
      require("markdown").setup()
    end
  },
  { "chentoast/marks.nvim",
    config = function()
      require'marks'.setup {
        -- whether to map keybinds or not. default true
        default_mappings = true,
        -- which builtin marks to show. default {}
        builtin_marks = { ".", "<", ">", "^" },
        -- whether movements cycle back to the beginning/end of buffer. default true
        cyclic = true,
        -- whether the shada file is updated after modifying uppercase marks. default false
        force_write_shada = false,
        -- how often (in ms) to redraw signs/recompute mark positions. 
        -- higher values will have better performance but may cause visual lag, 
        -- while lower values may cause performance penalties. default 150.
        refresh_interval = 250,
        -- sign priorities for each type of mark - builtin marks, uppercase marks, lowercase
        -- marks, and bookmarks.
        -- can be either a table with all/none of the keys, or a single number, in which case
        -- the priority applies to all marks.
        -- default 10.
        sign_priority = { lower = 10, upper = 15, builtin = 8, bookmark = 20 },
        -- disables mark tracking for specific filetypes. default {}
        excluded_filetypes = {},
        -- disables mark tracking for specific buftypes. default {}
        excluded_buftypes = {},
        -- marks.nvim allows you to configure up to 10 bookmark groups, each with its own
        -- sign/virttext. Bookmarks can be used to group together positions and quickly move
        -- across multiple buffers. default sign is '!@#$%^&*()' (from 0 to 9), and
        -- default virt_text is "".
        bookmark_0 = {
          sign = "⚑",
          virt_text = "hello world",
          -- explicitly prompt for a virtual line annotation when setting a bookmark from this group.
          -- defaults to false.
          annotate = false,
        },
        mappings = {}
      }
    end
  }
}
