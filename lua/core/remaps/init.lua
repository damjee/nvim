-- General Remaps
--
local map = vim.keymap.set

-- -- Keep search terms in the middle of the screen
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
--
--  Replace word under cursor
map("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/", { noremap = true })

--  
-- if vim.g.vscode then
-- 	local function vscode_action(action)
-- 		return function()
-- 			vim.fn.VSCodeNotify(action)
-- 		end
-- 	end
-- 	
-- 	map("n", "gD", vscode_action("editor.action.revealDeclaration"))
-- 	map("n", "gd", vscode_action("editor.action.revealDefinition"))
-- 	map("n", "K", vscode_action("editor.action.showHover"))
-- 	map("n", "gi", vscode_action("editor.action.goToImplementation"))
-- 	map({ "n", "v" }, "<leader>ca", vscode_action("editor.action.quickFix"))
-- 	map("n", "gr", vscode_action("editor.action.referenceSearch.trigger"))
-- else
-- 	vim.api.nvim_create_autocmd("LspAttach", {
-- 		group = vim.api.nvim_create_augroup("UserLspConfig", {}),
-- 		callback = function(ev)
-- 			vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
--
-- 			local opts = { buffer = ev.buf }
-- 			map("n", "gD", vim.lsp.buf.declaration, opts)
-- 			map("n", "gd", vim.lsp.buf.definition, opts)
-- 			map("n", "K", vim.lsp.buf.hover, opts)
-- 			map("n", "gi", vim.lsp.buf.implementation, opts)
-- 			map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
-- 			map("n", "gr", vim.lsp.buf.references, opts)
-- 		end,
-- 	})
-- end