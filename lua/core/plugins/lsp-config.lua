local M = {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"clangd",
					"eslint",
					"rust_analyzer",
					"gopls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local servers = {
				"lua_ls",
				"clangd",
				"eslint",
				"gopls",
			}

			for _, server in ipairs(servers) do
				vim.lsp.config(server, {
					capabilities = capabilities,
				})
				vim.lsp.enable(server)
			end

			-- vim.lsp.config("rust_analyzer", { capabilities = capabilities })
			-- vim.lsp.enable("rust_analyzer")
		end,
	},
	{
		"mrcjkb/rustaceanvim",
		version = "^4", -- Recommended
		ft = { "rust" },
	},
}
return M
