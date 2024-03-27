-- Keymaps go here
--
-- Nvim-Tree keymaps
-- Create function to smart toggle the tree
local nvimTreeFocusOrToggle = function()
	local nvimTree = require("nvim-tree.api")
	local currentBuf = vim.api.nvim_get_current_buf()
	local currentBufFt = vim.api.nvim_get_option_value("filetype", { buf = currentBuf })
	if currentBufFt == "NvimTree" then
		nvimTree.tree.toggle()
	else
		nvimTree.tree.focus()
	end
end
vim.keymap.set("n", "<C-n>", nvimTreeFocusOrToggle)

-- Telescope keymaps
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})

-- Harpoon keymaps
local harpoon = require("harpoon")
harpoon:setup({})
vim.keymap.set("n", "<leader>a", function()
	harpoon:list():append()
end)
vim.keymap.set("n", "<C-e>", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end)
vim.keymap.set("n", "<C-1>", function()
	harpoon:list():select(1)
end)
vim.keymap.set("n", "<C-2>", function()
	harpoon:list():select(2)
end)
vim.keymap.set("n", "<C-3>", function()
	harpoon:list():select(3)
end)
vim.keymap.set("n", "<C-4>", function()
	harpoon:list():select(4)
end)
vim.keymap.set("n", "<C-5>", function()
	harpoon:list():select(5)
end)

-- UndoTree keymaps
vim.keymap.set("n", "<leader>u", "<Cmd>UndotreeToggle<CR><Cmd>UndotreeFocus<CR>")

-- LSP-Config keymaps
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		-- Enable completion triggered by <c-x><c-o>
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		-- Buffer local mappings.
		local opts = { buffer = ev.buf }
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
	end,
})

-- Comment keymaps
local comment = require("Comment.api")
vim.keymap.set("n", "<C-q>", comment.toggle.linewise.current, { noremap = true })
vim.api.nvim_set_keymap(
	"x",
	"<C-q>",
	':<C-u>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>',
	{ noremap = true, silent = true }
)
