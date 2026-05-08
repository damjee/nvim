local M = {
	"Pocco81/auto-save.nvim",
	config = function()
		local autosave = require("auto-save")
		autosave.setup({
			enabled = false,
			trigger_events = { "InsertLeave" },
		})
		autosave.off()
	end,
}

return M
