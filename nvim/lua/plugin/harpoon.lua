local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>t", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-PageUp>", function() ui.nav_next() end)
vim.keymap.set("n", "<C-PageDown>", function() ui.nav_prev() end)
