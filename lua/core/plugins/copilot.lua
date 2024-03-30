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
					accept = "<C-f>",
					accept_word = "<C-g>",
					accept_line = "<C-d>",
					next = "<C-n>",
					prev = "<C-p>",
					dismiss = "<C-e>",
				},
			},
		})
	end,
}

return M
