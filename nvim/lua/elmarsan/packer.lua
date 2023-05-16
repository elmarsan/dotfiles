-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

    
  use {
    "williamboman/mason.nvim",
    run = ":MasonUpdate" -- :MasonUpdate updates registry contents
  }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  require("mason").setup()

   use({
	  'catppuccin/nvim',
	  as = 'catppuccin',
	  config = function()
		  vim.cmd('colorscheme catppuccin')
	  end
  })

  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use "nvim-treesitter/nvim-treesitter-textobjects"
  use "nvim-treesitter/playground"
  use "ThePrimeagen/harpoon" 
  use "mbbill/undotree"
  use "tpope/vim-fugitive"
  use "nvim-tree/nvim-web-devicons"

  use "nvim-lualine/lualine.nvim"       -- https://github.com/nvim-lualine/lualine.nvim
  use {
   "nvim-tree/nvim-tree.lua",          -- https://github.com/nvim-tree/nvim-tree.lua
   requires = {
     "nvim-tree/nvim-web-devicons",    -- https://github.com/nvim-tree/nvim-web-devicons
   },
  }

  -- Dev
  use "rhysd/vim-clang-format"              -- https://github.com/rhysd/vim-clang-format
  use "fatih/vim-go"                        -- https://github.com/fatih/vim-go
  use "SirVer/ultisnips"                    -- https://github.com/sirver/UltiSnips
  use "hrsh7th/cmp-nvim-lsp"                -- https://github.com/hrsh7th/cmp-nvim-lsp
  use "hrsh7th/nvim-cmp"                    -- https://github.com/hrsh7th/nvim-cmp
  use "neovim/nvim-lspconfig"               -- https://github.com/neovim/nvim-lspconfig
  use "onsails/lspkind-nvim"                -- https://github.com/onsails/lspkind-nvim
  use "quangnguyen30192/cmp-nvim-ultisnips" -- https://github.com/quangnguyen30192/cmp-nvim-ultisnips
  use "williamboman/nvim-lsp-installer"     -- https://github.com/williamboman/nvim-lsp-installer
  use "numToStr/Comment.nvim"               -- https://github.com/numToStr/Comment.nvim
  use { "kylechui/nvim-surround", tag = "*" }  -- https://github.com/kylechui/nvim-surround

  use 'ryanoasis/vim-devicons'
end)
