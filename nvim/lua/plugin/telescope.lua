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

local oxocarbon = require("oxocarbon")

vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = oxocarbon.blend, bg = oxocarbon.blend })
vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = oxocarbon.base02, bg = oxocarbon.base02 })
vim.api.nvim_set_hl(0, "TelescopePromptNormal", { fg = oxocarbon.base05, bg = oxocarbon.base02 })
vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { fg = oxocarbon.base08, bg = oxocarbon.base02 })
vim.api.nvim_set_hl(0, "TelescopeNormal", { fg = oxocarbon.none, bg = oxocarbon.blend })
vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { fg = oxocarbon.base02, bg = oxocarbon.base12 })
vim.api.nvim_set_hl(0, "TelescopePromptTitle", { fg = oxocarbon.base02, bg = oxocarbon.base11 })
vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { fg = oxocarbon.blend, bg = oxocarbon.blend })
vim.api.nvim_set_hl(0, "TelescopeSelection", { fg = oxocarbon.none, bg = oxocarbon.base02 })
vim.api.nvim_set_hl(0, "TelescopePreviewLine", { fg = oxocarbon.none, bg = oxocarbon.base01 })
