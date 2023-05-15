local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {

  -- Color Themes
  'ellisonleao/gruvbox.nvim',
	'rose-pine/neovim',
  'rebelot/kanagawa.nvim',
  'bluz71/vim-nightfly-colors',
  'projekt0n/github-nvim-theme',

  -- Tools
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'nvim-lualine/lualine.nvim',
  'nvim-treesitter/nvim-treesitter',
  'tpope/vim-fugitive',
  'tpope/vim-commentary',
  'jiangmiao/auto-pairs',
  'mhinz/vim-startify',
  'frazrepo/vim-rainbow',
  'ftorres16/spice.vim',
  -- Buffer Line
  {
  'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      animation = true,
      insert_at_start = true
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },

  -- LSP
  {
    'VonHeikemen/lsp-zero.nvim',
    tag = 'v2.x',
    dependencies = {
      -- LSP Support
      'neovim/nvim-lspconfig',
      {'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    'williamboman/mason-lspconfig.nvim', -- Optional
  }},


  -- Autocompletion
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',       -- Optional
  'hrsh7th/cmp-path',         -- Optional
	'hrsh7th/cmp-nvim-lua',     -- Optional
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  "rafamadriz/friendly-snippets",
  "glepnir/lspsaga.nvim",
  {
	  'nvim-telescope/telescope.nvim',
	  tag = '0.1.0',
	  dependencies = { {'nvim-lua/plenary.nvim'} }
  }
}

local opts = {}


require("lazy").setup(plugins, opts)
