return {
    'Wansmer/treesj',
    keys = {
	{
	    '<leader>m',
	    '<cmd>TSJToggle<cr>',
	    desc = "Toggle Treesitter Join" 
	}
    },
    cmd = { "TSJToggle", "TSJSplit", "TSJJoin" },
    opts = { use_default_keymaps = false },
    dependencies = { 'nvim-treesitter/nvim-treesitter' }, -- if you install parsers with `nvim-treesitter`
    config = function()
	require('treesj').setup({--[[ your config ]]})
    end,
}
