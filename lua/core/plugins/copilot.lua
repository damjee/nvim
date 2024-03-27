local M = {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		require("copilot").setup({
			panel = { enabled = false },
			suggestion = {
				enabled = true,
				auto_trigger = true,
				debounce = 75,
				keymap = {
					accept = "<C-;>",
					accept_word = "<C-l>",
					accept_line = "<C-'>",
					next = "<C-n>",
					prev = "<C-p>",
					--	dismiss = "<C-|>",
				},
			},
		})
	end,
}

return M
