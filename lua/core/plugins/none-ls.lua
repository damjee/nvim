local M = {
	{
		"nvimtools/none-ls.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			local null_ls = require("null-ls")
			local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

			-- Setting lsp formatting to only use none-ls
			local lsp_formatting = function(bufnr)
				vim.lsp.buf.format({
					filter = function(client)
						-- apply logic here
						return client.name == "null-ls"
					end,
					bufnr = bufnr,
				})
			end

			null_ls.setup({
				sources = {
					null_ls.builtins.diagnostics.gdlint,
					null_ls.builtins.formatting.gdformat,
					null_ls.builtins.formatting.prettier,
					null_ls.builtins.formatting.stylua,
				},

				-- Setting on_attach to enable format on save
				on_attach = function(client, bufnr)
					if client.supports_method("textDocument/formatting") then
						vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
						vim.api.nvim_create_autocmd("BufWritePre", {
							group = augroup,
							buffer = bufnr,
							callback = function()
								lsp_formatting()
							end,
						})
					end
				end,
			})
		end,
	},
}

return M
