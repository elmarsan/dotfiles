---@diagnostic disable: undefined-global
vim.keymap.set('n', "<leader>tt", ":NvimTreeToggle<CR>")
vim.keymap.set('n', "<leader>tf", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>rf", ":NvimTreeFindFile<CR>")

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        width = 35,
        float = {
            enable = false,
            quit_on_focus_loss = true,
            open_win_config = {
                relative = "editor",
                border = "rounded",
                width = 30,
                height = 30,
                row = 1,
                col = 1,
            },
        }
    },
    renderer = {
        group_empty = true,
        indent_width = 2,
        indent_markers = {
            enable = true,
            inline_arrows = true,
            icons = {
                corner = "└",
                edge = "│",
                item = "│",
                bottom = "─",
                none = " ",
            },
        },
        highlight_opened_files = "all",
        highlight_modified = "all",
        icons = {
            webdev_colors = true,
            git_placement = "before",
            modified_placement = "after",
            padding = " ",
            symlink_arrow = " ➛ ",
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = false,
                modified = true,
            },
        },
    },
    filters = {
        dotfiles = false
    },
    git = {
        enable = true,
        ignore = false
    },
})
