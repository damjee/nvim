local M = {
	{
		"hiphish/rainbow-delimiters.nvim",
		init = function()
			local excluded_filetypes = {
				NvimTree = true,
			}

			vim.g.rainbow_delimiters = {
				condition = function(bufnr)
					return vim.bo[bufnr].buftype == "" and not excluded_filetypes[vim.bo[bufnr].filetype]
				end,
			}
		end,
	},
	"mbbill/undotree",
	"kamykn/spelunker.vim",
	"easymotion/vim-easymotion"
}

return M
