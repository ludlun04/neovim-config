return {
    {
	"hrsh7th/cmp-nvim-lsp",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
	    { "antosha417/nvim-lsp-file-operations", config = true },
	    { "folke/lazydev.nvim", opts = {} },
	},
	config = function()
	    -- import cmp-nvim-lsp plugin
	    local cmp_nvim_lsp = require("cmp_nvim_lsp")

	    -- used to enable autocompletion (assign to every lsp server config)
	    local capabilities = cmp_nvim_lsp.default_capabilities()

	    vim.lsp.config("*", {
		capabilities = capabilities,
	    })
	end,
    },
    {
	{
	    "antosha417/nvim-lsp-file-operations",
	    dependencies = {
		"nvim-lua/plenary.nvim",
		-- Uncomment whichever supported plugin(s) you use
		-- "nvim-tree/nvim-tree.lua",
		-- "nvim-neo-tree/neo-tree.nvim",
		-- "simonmclean/triptych.nvim"
	    },
	    config = function()
		require("lsp-file-operations").setup()
	    end,
	}

    },
    {
	"folke/lazydev.nvim",
	opts = {}
    }
}
