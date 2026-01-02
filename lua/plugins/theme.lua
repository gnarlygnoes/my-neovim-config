melange = {
	"savq/melange-nvim",
	lazy = false,
	priority = 1000,
	config = function() 
		vim.cmd('colorscheme melange')
	end
}

rosie_p = {
	"rose-pine/neovim",
	name = "rose-pine",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd("colorscheme rose-pine")
	end
}

return rosie_p
