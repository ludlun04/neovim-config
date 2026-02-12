return {
    {
	"pedrog14/gruvbox.nvim",
	lazy = false,
	priority = 1000,
	config = function()
	    vim.o.background = "dark"

	    require("gruvbox").setup({
		contrast = "hard"	
	    })

	    vim.cmd.colorscheme("gruvbox")
	end
    },
    {
	"nvim-lualine/lualine.nvim",
	dependencies = {
	    "nvim-tree/nvim-web-devicons",
	},
	opts = {
	    theme = "gruvbox"
	}
    }
}	
