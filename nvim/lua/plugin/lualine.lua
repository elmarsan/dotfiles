local lualine = require("lualine")

local function window()
  return vim.api.nvim_win_get_number(0)
end

lualine.setup({
    options = {
        theme = 'ayu_dark',
    },
    sections = {
       lualine_a = { window },
    }
})

