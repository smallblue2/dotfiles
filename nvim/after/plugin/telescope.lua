local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

-- Telescope config
require('telescope').setup{
    defaults = {
        mappings = {
            i = { -- Insert mode mappings
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
            },
        },
    }
}


-- Custom keymaps

-- Project File (Find a file)
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- Project Git (Find a git file)
vim.keymap.set('n', '<leader>pg', builtin.git_files, {})
-- Preject Search (Search for files through grep functionality)
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
