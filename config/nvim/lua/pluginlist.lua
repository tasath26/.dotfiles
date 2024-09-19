-- plugins

return {

	  -- comments 
    {
			'numToStr/Comment.nvim', opts = {}
		},

    {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end
    },

	--Top bar
	{ 'akinsho/bufferline.nvim',
		version = "*", dependencies = 'nvim-tree/nvim-web-devicons'
	},

	--catppuccin theme
	{
		"catppuccin/nvim",
		priority = 1000,
		config = function()
			vim.cmd("colorscheme catppuccin-frappe")
		end
	},

	--file tree
	{
		"nvim-tree/nvim-tree.lua",
  	version = "*",
  	lazy = false,
  	dependencies = {
    	"nvim-tree/nvim-web-devicons",
  	},
  	config = function()
    	require("nvim-tree").setup {}
  	end,
	},

	-- Autopairs (for brackets parentheses e.g.)
   {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup({})
    end
  },

	-- icons
	{
		"kyazdani42/nvim-web-devicons"
	},

	-- LSP Config
	{
		"neovim/nvim-lspconfig",
	},

    'folke/neodev.nvim', -- new
   	'folke/lsp-trouble.nvim',

	-- Autocompletion
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'rafamadriz/friendly-snippets',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
			'hrsh7th/cmp-buffer',
    },
  },


	-- Syntax parsing
  {
    'nvim-treesitter/nvim-treesitter',
     build = ':TSUpdate',
  },


	-- File searching
  {
     'nvim-telescope/telescope.nvim',
     dependencies = { 'nvim-lua/plenary.nvim' }
  },

  {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
  },


	-- Status line
  {
      'nvim-lualine/lualine.nvim',
      dependencies = {
        "nvim-tree/nvim-web-devicons"
      },
      config = function()
        require("lualine").setup({
				    options = {
    icons_enabled = true,
    theme = 'onedark',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
        })
      end,
  },

	-- Terminal
	{
		'voldikss/vim-floaterm'
	},
}


