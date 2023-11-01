vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- packer
    use 'wbthomason/packer.nvim'
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.1', requires = { { 'nvim-lua/plenary.nvim' } } }
    use { 'neoclide/coc.nvim', branch = 'release' }
    use { 'nyoom-engineering/oxocarbon.nvim' }
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use "tpope/vim-fugitive"
    use "nvim-tree/nvim-web-devicons"
    use "nvim-lualine/lualine.nvim"
    use {
        "nvim-tree/nvim-tree.lua",
        after = "nvim-web-devicons",
        requires = "nvim-tree/nvim-web-devicons",
    }
    use "fatih/vim-go"
    use "numToStr/Comment.nvim"
    use 'f-person/git-blame.nvim'
end)
