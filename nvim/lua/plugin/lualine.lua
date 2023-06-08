local lualine = require("lualine")

lualine.setup({
    options = {
        theme = 'powerline',
    },
    sections = {
        lualine_a = { 'mode' },
    },
})
