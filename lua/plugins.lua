return require('packer').startup(function()
  -- packer manager
  use 'wbthomason/packer.nvim'

  use 'lewis6991/impatient.nvim'
  -- colorSchemes
  use { "ellisonleao/gruvbox.nvim" }

  -- file explorer
  use 'kyazdani42/nvim-tree.lua'

  -- iconos
  use 'kyazdani42/nvim-web-devicons'

  -- status bar
  use 'nvim-lualine/lualine.nvim'

  -- cerrar buffers
  use 'moll/vim-bbye'

  -- lsp setting
  use 'tamago324/nlsp-settings.nvim'
  -- LSP
  use 'neovim/nvim-lspconfig' -- activa lsp
  use 'williamboman/nvim-lsp-installer'
  use "tamago324/nlsp-settings.nvim"
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use 'hrsh7th/cmp-nvim-lsp' -- comletado LS<P

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/plenary.nvim' --dependencia telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-telescope/telescope-media-files.nvim' -- faltan dependencias

  -- treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- autopairs
  use 'windwp/nvim-autopairs'

  --terminal
  use { "akinsho/toggleterm.nvim", tag = 'v1.*', config = function() require("toggleterm").setup() end }

  -- indent-blankline
  use "lukas-reineke/indent-blankline.nvim"

  -- color a propiedades CSS
  use 'norcalli/nvim-colorizer.lua'

  -- comments
  use { 'numToStr/Comment.nvim', config = function() require('Comment').setup() end }
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- gitsigns
  use "lewis6991/gitsigns.nvim"

  -- bufferline
  use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }

  use 'tpope/vim-surround'
end)
