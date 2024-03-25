local M = {
	{
		"nvim-tree/nvim-tree.lua",
		config = function ()
			require("nvim-tree").setup({
				diagnostics = { enable = true },
			})
		end,
		dependencies = {
      		"nvim-tree/nvim-web-devicons",
      	},
	}
}

return M
