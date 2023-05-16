local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then return end

vim.keymap.set('n', "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>rf", ":NvimTreeFindFile<CR>")


-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults

-- OR setup with some options
nvimtree.setup({
  sort_by = "case_sensitive",
  view = {
    width = 35,
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
})
