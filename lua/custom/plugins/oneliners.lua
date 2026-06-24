return {
  { -- vertical lines showing indentation
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = {},
  },
  { -- make x, c etc. use the black hole register so yank paste is more useful
    'gbprod/cutlass.nvim',
    opts = {
      cut_key = 'm',
    },
  },
  { -- automatically close parenthesis, quotation marks etc.
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
  },
  { -- minimap
    'Isrothy/neominimap.nvim',
    lazy = false, -- load eagerly; the plugin lazy-inits internally and auto_enable shows it on file open
    keys = { { '<leader>mt', '<cmd>Neominimap Toggle<cr>', desc = '[M]inimap [T]oggle' } },
    init = function()
      vim.g.neominimap = { auto_enable = true }

      -- Make the current line stand out clearly on the minimap (pink accent band).
      local function set_hl()
        vim.api.nvim_set_hl(0, 'NeominimapCursorLine', { bg = '#ff9fb9', fg = '#111318', bold = true })
      end
      vim.api.nvim_create_autocmd('ColorScheme', { callback = set_hl })
      set_hl() -- apply now in case the colorscheme is already loaded
    end,
  },
  { -- git commands
    'tpope/vim-fugitive',
  }
}
