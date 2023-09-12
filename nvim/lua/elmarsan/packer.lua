vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- packer
    use 'wbthomason/packer.nvim'

    -- mason
    --use { "williamboman/mason.nvim", run = ":MasonUpdate" }
    -- require("mason").setup()

    -- telescope
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.1', requires = { { 'nvim-lua/plenary.nvim' } } }

    -- themnes
    use { 'nyoom-engineering/oxocarbon.nvim' }

    -- treesitter
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    use "mbbill/undotree"
    use "tpope/vim-fugitive"

    use "nvim-tree/nvim-web-devicons"
    use "nvim-lualine/lualine.nvim"
    use {
        "nvim-tree/nvim-tree.lua",
        after = "nvim-web-devicons",
        requires = "nvim-tree/nvim-web-devicons",
    }

    use "rhysd/vim-clang-format"                -- https://github.com/rhysd/vim-clang-format
    use "fatih/vim-go"                          -- https://github.com/fatih/vim-go
    use "SirVer/ultisnips"                      -- https://github.com/sirver/UltiSnips
    use "hrsh7th/cmp-nvim-lsp"                  -- https://github.com/hrsh7th/cmp-nvim-lsp
    use "hrsh7th/nvim-cmp"                      -- https://github.com/hrsh7th/nvim-cmp
    use "neovim/nvim-lspconfig"                 -- https://github.com/neovim/nvim-lspconfig
    use "onsails/lspkind-nvim"                  -- https://github.com/onsails/lspkind-nvim
    use "quangnguyen30192/cmp-nvim-ultisnips"   -- https://github.com/quangnguyen30192/cmp-nvim-ultisnips
    use "williamboman/nvim-lsp-installer"       -- https://github.com/williamboman/nvim-lsp-installer
    use "numToStr/Comment.nvim"                 -- https://github.com/numToStr/Comment.nvim
    use { "kylechui/nvim-surround", tag = "*" } -- https://github.com/kylechui/nvim-surround
    use 'L3MON4D3/LuaSnip'
    use 'VonHeikemen/lsp-zero.nvim'
    use 'echasnovski/mini.starter'
    use { "romgrk/barbar.nvim", requires = { "nvim-tree/nvim-web-devicons", "lewis6991/gitsigns.nvim" } } -- https://github.com/romgrk/barbar.nvim
    use { "ellisonleao/glow.nvim", config = function() require("glow").setup() end }
    use 'camdencheek/tree-sitter-dockerfile'
    use 'f-person/git-blame.nvim'
end)
