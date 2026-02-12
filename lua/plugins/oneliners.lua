return {
  { -- git commands
    "tpope/vim-fugitive" 
  },
  { -- color variables are colored
    "brenoprata10/nvim-highlight-colors",
    config = function()
      require("nvim-highlight-colors").setup({
	render = 'virtual',
	virtual_symbol = '●',
	--virtual_symbol_position = 'eow',
	--virtual_symbol_prefix = ' ',
	--virtual_symbol_suffix = ''
      })
      require("cmp").setup({
	formatting = {
	  format = require("nvim-highlight-colors").format
	}
      })
    end,
    opts = {
      enable_tailwind = true,
      render = 'virtual'
    }
  },
  { -- TODO comments are highlighted
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {}
  },
  { -- vertical lines showing indentation
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
  },
  { -- closes ", (, {, etc. automatically
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
  }
}
