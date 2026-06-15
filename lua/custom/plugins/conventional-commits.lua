return {
  'zerbiniandrea/conventional-commits.nvim',
  cmd = 'ConventionalCommit',
  config = function()
    require('conventional-commits').setup({
      -- Optional configuration here
    })
  end,
}
