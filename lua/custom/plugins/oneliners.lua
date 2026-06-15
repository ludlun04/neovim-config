return {
  { -- vertical lines showing indentation
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = {},
  },
  { -- make x, c etc. use the black hole register so yank paste is more useful
    'gbprod/cutlass.nvim',
    opts = {
      cut_key = 'm'
    },
  },
}
