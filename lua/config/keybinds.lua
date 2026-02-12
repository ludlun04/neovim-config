vim.g.mapleader = " "

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.keymap.set("n", '<leader>gc', '<cmd>ConventionalCommit<cr>', { desc = 'Conventional Commit' })

vim.keymap.set("n", "\\", function()
  require("neo-tree.command").execute({ toggle = true })
end, { silent = true })

