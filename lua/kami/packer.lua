vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  
    --PACKER
  use ('wbthomason/packer.nvim')

  --FILE NAVIGATION
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1', 
	  -- or, branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
 
  use('ThePrimeagen/harpoon')
 
  use {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v2.x",
      requires = { 
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
      }
  }

  --THEMES
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  use("neanias/everforest-nvim")
  use('sainnhe/gruvbox-material')

  --PARSER
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')

  --UNDO HISTORY
  use('mbbill/undotree')
  --GIT
  use('tpope/vim-fugitive')

  --LSP AUTOCOMPLETION
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		{'neovim/nvim-lspconfig'},-- Required
        {'j-hui/fidget.nvim'},
		{'williamboman/mason.nvim',
		  run = function()
			  pcall(vim.cmd, 'MasonUpdate')
		  end},
	    {'williamboman/mason-lspconfig.nvim'}, -- Optional


	    -- Autocompletion
	    {'hrsh7th/nvim-cmp'},     -- Required
	    {'hrsh7th/cmp-nvim-lsp'}, -- Required
	    {'L3MON4D3/LuaSnip'},     -- Required
  	  }
  }

  --ICONS
  use 'nvim-tree/nvim-web-devicons'
  -- Unless you are still migrating, remove the deprecated commands from v1.x
  vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

  use{ -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = false,
        theme = 'onedark',
        component_separators = '|',
        section_separators = '',
      },
    },
  }

  use{ -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help indent_blankline.txt`
    opts = {
      char = '┊',
      show_trailing_blankline_indent = false,
    },
  }


    -- "gc" to comment visual regions/lines
  use { 'numToStr/Comment.nvim', opts = {} }

end)



