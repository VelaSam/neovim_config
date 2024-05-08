return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = {
        'nvim-lua/plenary.nvim',
        {'nvim-telescope/telescope-fzf-native.nvim', build='make'},
        {'nvim-tree/nvim-web-devicons'}
    },
    config = function()
        local telescope = require('telescope')
        local actions = require('telescope.actions')

        telescope.setup({
            defaults =  {
                mappings = {
                    i = {
                        ['<C-k>'] = actions.move_selection_previous,
                        ['<C-j>'] = actions.move_selection_next,
                        ['<C-q>'] = actions.send_selected_to_qflist + actions.open_qflist,

                    }
                }
            }
        })
        telescope.load_extension('fzf')


    --telescope keymaps
    local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = '[F]ind [F]ile'})
        vim.keymap.set('n', '<leader>fw', builtin.live_grep, {desc = '[F]ind [W]tring'})
        vim.keymap.set('n', '<leader>fr', builtin.oldfiles, {desc = '[F]ind [R]ecent'})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = '[F]ind [B]uffer'})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = '[F]ind [H]elp'})
        vim.keymap.set('n', '<leader>fc', builtin.grep_string, {desc = '[F]ind string under [C]ursor'})
    end

}
