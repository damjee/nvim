local M = {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		-- code
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform will run multiple formatters sequentially
				-- python = { "isort", "black" },
				-- Use a sub-list to run only the first available formatter
				-- javascript = { { "prettierd", "prettier" } },
				javascript = { "prettier" },
				rust = { "rustfmt" },
			},
			format_after_save = {
				lsp_fallback = true,
			},
		})
	end,
}

return M
