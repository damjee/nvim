local M = {
	{
		"navarasu/onedark.nvim",
		lazy = false,
		priority = 1000, -- Ensure it loads first
		config = function ()
			require('onedark').setup({ transparent = true })
			vim.cmd("colorscheme onedark")
		end,
	},
}

return M
