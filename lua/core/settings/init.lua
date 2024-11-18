-- General settings for nvim
vim.opt.number = true            -- Set line numbers
vim.opt.relativenumber = false   -- line numbers are relative or not

vim.opt.breakindent = true       -- Intent wrapped lines
vim.opt.linebreak = true         -- Wrap around words not characters

vim.opt.scrolloff = 8            -- minimum number of lines to keep above and below cursor (999 to keep centered)

vim.opt.cursorline = true        -- show horizontal line at cursor position
vim.opt.cursorlineopt = "number" -- options for cursorline, (line, screenline, number, or both)

-- Settings for search
vim.opt.hlsearch = false -- Disable highlighting search results
vim.opt.incsearch = true -- Show search results as you type

-- Settings for tabs
vim.opt.expandtab = false     -- If true, inputs spaces when TAB is pressed
vim.opt.copyindent = true     -- Copy the structure of existing lines indent when auto-indenting a new line
vim.opt.preserveindent = true -- When changing the indent of the current line, preserve indent structure
vim.opt.tabstop = 4           -- number of spaces tabs count for
vim.opt.shiftwidth = 4        -- number of spaces to use for each step of (auto)indent
vim.opt.softtabstop = 0       -- number of spaces tabs count for when performing editing operations

-- Settings for undo history
vim.opt.swapfile = false                               -- Disable swap files
vim.opt.backup = false                                 -- Disable backup files
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- Set undo directory
vim.opt.undofile = true                                -- Enable persistent undo

-- Windows specific undotree
-- Makes FC used instead of Diff
-- vim.g.undotree_DiffCommand = "FC"
