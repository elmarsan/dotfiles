local builtin = require('telescope.builtin')

-- Find files
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- Find in git files 
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
-- Find by word globally
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
-- Find help
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- Find in buffers
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- Find in current working directory
vim.keymap.set('n', '<leader>fd', builtin.grep_string, {})
