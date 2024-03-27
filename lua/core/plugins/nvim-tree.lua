local M = {
	{
		"nvim-tree/nvim-tree.lua",
		config = function()
			require("nvim-tree").setup({
				view = { width = 35 },
				diagnostics = { enable = true },
			})
		end,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},
}

return M
