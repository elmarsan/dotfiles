vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'nvim-lua/plenary.nvim'
    use { 'neoclide/coc.nvim', branch = 'release' }
    use { 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } }
    use { 'nvim-lualine/lualine.nvim' }
    use { "nvim-tree/nvim-tree.lua", requires = { 'nvim-tree/nvim-web-devicons' } }
    use { "morhetz/gruvbox" }
    use "fatih/vim-go"
    use "tpope/vim-fugitive"
    use 'tpope/vim-commentary'
    use 'f-person/git-blame.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use {
        "nvim-telescope/telescope.nvim",
        requires = {
            { "nvim-telescope/telescope-live-grep-args.nvim" },
        },
        config = function()
        require("telescope").load_extension("live_grep_args")
    end
}
end)
