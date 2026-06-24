return {
  'sindrets/diffview.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  cmd = { 'DiffviewOpen', 'DiffviewClose', 'DiffviewToggleFiles', 'DiffviewFocusFiles', 'DiffviewFileHistory' },
  keys = {
    {
      '<leader>gd',
      function()
        if require('diffview.lib').get_current_view() then
          vim.cmd 'DiffviewClose'
        else
          vim.g.diffview_show_full_file = false
          vim.cmd 'DiffviewOpen'
        end
      end,
      desc = 'Diffview toggle (folded)',
    },
    {
      '<leader>gD',
      function()
        if require('diffview.lib').get_current_view() then
          vim.cmd 'DiffviewClose'
        else
          vim.g.diffview_show_full_file = true
          vim.cmd 'DiffviewOpen'
        end
      end,
      desc = 'Diffview toggle (entire file)',
    },
    {
      '<leader>gh',
      function()
        vim.g.diffview_show_full_file = false
        vim.cmd 'DiffviewFileHistory %'
      end,
      desc = 'File history (current file)',
    },
    {
      '<leader>gH',
      function()
        vim.g.diffview_show_full_file = false
        vim.cmd 'DiffviewFileHistory'
      end,
      desc = 'File history (repo)',
    },
  },
  opts = {
    enhanced_diff_hl = true,
    hooks = {
      -- When opened via <leader>gD, keep folds open so the whole file shows.
      diff_buf_win_enter = function(_, winid)
        vim.wo[winid].foldenable = not vim.g.diffview_show_full_file
      end,
    },
  },
}
