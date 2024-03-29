local M = {
	"Pocco81/auto-save.nvim",
	config = function()
		require("auto-save").setup({
			trigger_events = { "InsertLeave" }, -- your config goes here
			-- or just leave it empty :)
		})
	end,
}

return M
