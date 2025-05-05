local M = {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.install").prefer_git = false
		require("nvim-treesitter.install").compilers = { "clang", "gcc" }

		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {
				"c", "cpp", "lua", "vim", "vimdoc", "query",
				"javascript", "typescript", "json", "html",
				"bash", "fish", "css", "csv", "dockerfile",
				"gdscript", "gdshader", "godot_resource",
				"go", "gomod", "gitignore", "just",
				"python", "regex", "rust", "sql", "tmux",
				"toml", "xml", "yaml"
			},
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}

return { M }
