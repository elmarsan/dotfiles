local lualine = require("lualine")

local function window()
    return vim.api.nvim_win_get_number(0)
end

lualine.setup({
    options = {
        theme = 'nord',
        globalstatus = false,
        height = 10,
    },
    sections = {
        lualine_a = { window },
        lualine_c = {
            { 'filename', path = 1 }, -- Display absolute path
        },
    }
})
