local M = {
	"mg979/vim-visual-multi",
	branch = "master",
	init = function()
		vim.g.VM_maps = {
			["Find Under"] = "<M-n>",
			["Find Subword Under"] = "<M-n>",
		}
	end,
}

return M
