local M = {
	"AckslD/nvim-neoclip.lua",
	dependencies = {
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		require("neoclip").setup()
	end,
}

return M
