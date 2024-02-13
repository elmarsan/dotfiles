vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.1', requires = { { 'nvim-lua/plenary.nvim' } } }
    use { 'neoclide/coc.nvim', branch = 'release' }
    use { 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } }
    use { 'nvim-lualine/lualine.nvim' }
    use { "nvim-tree/nvim-tree.lua" }
    use { "morhetz/gruvbox" }
    use "fatih/vim-go"
    use "tpope/vim-fugitive"
    use 'tpope/vim-commentary'
    use 'f-person/git-blame.nvim'
end)
