local M = {
	"nvim-treesitter/nvim-treesitter",
	build = function()
		require("nvim-treesitter.install").update({ with_sync = true })()
	end,
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {
				"c",
				"cpp",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"javascript",
				"typescript",
				"json",
				"html",
				"bash",
				"fish",
				"css",
				"csv",
				"dockerfile",
				"gdscript",
				"gdshader",
				"godot_resource",
				"go",
				"gomod",
				"gitignore",
				"just",
				"python",
				"regex",
				"rust",
				"sql",
				"tmux",
				"toml",
				"xml",
				"yaml"
			},
			highlight = { enable = true },
			--indent = { enable = true }
		})
	end,
}

return { M }
