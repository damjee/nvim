local M = {
	-- "Pocco81/auto-save.nvim",
	-- config = function()
	-- 	require("auto-save").setup({
	-- 		enabled = false,
	-- 	})
	-- end,

	'0x00-ketsu/autosave.nvim',
	-- lazy-loading on events
	event = { "InsertLeave", "TextChanged" },
	config = function()
		require('autosave').setup {
			enable = false,
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
			-- test
		}
	end

}

return M
