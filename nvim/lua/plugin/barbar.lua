local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
map('n', '<A-r>', '<Cmd>BufferCloseBuffersRight<CR>', opts)
map('n', '<A-l>', '<Cmd>BufferCloseBuffersLeft<CR>', opts)
map('n', '<A-q>', '<Cmd>BufferCloseAllButCurrent<CR>', opts)
require("barbar").setup {
    sidebar_filetypes = {
        NvimTree = true,
    },
}
