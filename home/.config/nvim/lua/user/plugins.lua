vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  -- Tree
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-tree/nvim-tree.lua'
  -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  -- LSP/DAP
  use 'neovim/nvim-lspconfig'
  use {
    'williamboman/mason.nvim',
    config = function()
      require("mason").setup()
    end
  }
  use 'williamboman/mason-lspconfig.nvim'
  use 'mfussenegger/nvim-dap'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'folke/trouble.nvim'
  -- Theme
  use 'sainnhe/sonokai'
end)
