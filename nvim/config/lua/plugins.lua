return require('packer').startup(function(use)

  -- Package manager / Libs
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'

  -- LSP
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'
  -- Tree Sitter
  use 'nvim-treesitter/nvim-treesitter'

  -- Language Specifics
  -- Rust
  use 'simrat39/rust-tools.nvim'

  -- Interface
  -- Colorscheme
  use { "catppuccin/nvim", as = "catppuccin" }
  -- Colorizer
  use { "norcalli/nvim-colorizer.lua" }
  -- Bufferline
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  -- Airline
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
  -- File tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1', requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- Dashboard
  use {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup({
        -- config
      })
    end,
    requires = {'nvim-tree/nvim-web-devicons'}
  }

end)

