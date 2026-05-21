-- General settings for nvim
vim.opt.breakindent = true       -- Intent wrapped lines
vim.opt.linebreak = true         -- Wrap around words not characters

vim.opt.scrolloff = 8            -- minimum number of lines to keep above and below cursor (999 to keep centered)

-- Settings for search
vim.opt.hlsearch = false -- Disable highlighting search results
vim.opt.incsearch = true -- Show search results as you type

-- Settings for undo history
vim.opt.swapfile = false -- Disable swap files
vim.opt.backup = false   -- Disable backup files

local path_sep = vim.fn.has("win32") == 1 and "\\" or "/"
local undo_dir = vim.fn.expand("~") .. path_sep .. ".vim" .. path_sep .. "undodir"

vim.fn.mkdir(undo_dir, "p")
vim.opt.undodir = undo_dir -- Set undo directory
vim.opt.undofile = true    -- Enable persistent undo

if vim.fn.has("win32") == 1 then
	-- Undotree uses fc on Windows instead of the missing diff command.
	vim.g.undotree_DiffCommand = "FC"
end
v