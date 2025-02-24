-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out,                            "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    {
      "morhetz/gruvbox",
      lazy = false,
      priority = 1000,
      config = function()
        vim.cmd("colorscheme gruvbox")
      end,
    },
    {
      {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = {
          'nvim-lua/plenary.nvim',
          {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release',
          },
        },
        config = function()
          require('telescope').setup {
            pickers = {
              find_files = {
                hidden = true,
                file_ignore_patterns = {
                  ".*/vendor/.*",
                  ".git/"
                },
              },
              live_grep = {
                hidden = true,
                file_ignore_patterns = {
                  ".*/vendor/.*",
                  ".git/"
                },
              }
            },
            extension = {
              fzf = {}
            },
          }
          require('telescope').load_extension('fzf')

          vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files)
          vim.keymap.set('n', '<leader>fd', require('telescope.builtin').live_grep)
          vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags)
        end
      }
    },
    {
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
      config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
          ensure_installed = { "lua", "typescript", "javascript", "go", "cpp" },
          auto_install = true,
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
        })
      end
    },
    { "fatih/vim-go" },
    {
      'nvim-lualine/lualine.nvim',
      dependencies = { 'nvim-tree/nvim-web-devicons' },
      opts = {
        options = {
          theme = 'gruvbox_light',
          component_separators = '|',
          section_separators = { left = '', right = '' },
        },
        sections = {
          lualine_a = {
            {
              'filename',
              file_status = true,
              path = 2
            }
          }
        },
      },
    },
    {
      'nvim-tree/nvim-tree.lua',
      dependencies = { 'nvim-tree/nvim-web-devicons' },
      opts = {
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
        filters = {
          dotfiles = false
        },
        git = {
          enable = true,
          ignore = false
        },
      },
    },
    {
      'saghen/blink.cmp',
      dependencies = 'rafamadriz/friendly-snippets',
      version = '*',
      opts = {
        keymap = { preset = 'super-tab' },
        appearance = {
          use_nvim_cmp_as_default = true,
          nerd_font_variant = 'mono'
        },
        signature = { enabled = true },
        sources = {
          default = { 'lsp', 'path', 'snippets', 'buffer' },
        },
      },
      opts_extend = { 'sources.default' },
    },
    {
      'neovim/nvim-lspconfig',
      dependencies = {
        {
          "folke/lazydev.nvim",
          ft = "lua", -- only load on lua files
          opts = {
            library = {
              -- See the configuration section for more details
              -- Load luvit types when the `vim.uv` word is found
              { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
          },
        },
      },
      config = function()
        require("lspconfig").lua_ls.setup {}
        require("lspconfig").gopls.setup {
          cmd = { "gopls" },
          filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
        }

        vim.api.nvim_create_autocmd('LspAttach', {
          callback = function(args)
            local client = vim.lsp.get_client_by_id(args.data.client_id)
            if not client then return end
            -- Format the current buffer on save
            if client.supports_method('textDocument/formatting') then
              -- Format the current buffer on save
              vim.api.nvim_create_autocmd('BufWritePre', {
                buffer = args.buf,
                callback = function()
                  vim.lsp.buf.format({
                    bufnr = args.buf,
                    id =
                        client.id
                  })
                end,
              })
            end
          end,
        })
      end,
    },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  -- install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  -- checker = { enabled = true },
})

vim.opt.nu = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.guicursor = ""
vim.opt.encoding = "utf-8"
vim.opt.background = "dark"
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition)
vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation)
vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)

vim.keymap.set('n', "<leader>tt", ":NvimTreeToggle<CR>")
vim.keymap.set('n', "<leader>tf", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>rf", ":NvimTreeFindFile<CR>")
