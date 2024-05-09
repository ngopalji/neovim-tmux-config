local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Normal mode remappings
-- Window navigation
map('n', '<Leader>h', '<C-w>h', opts)
map('n', '<Leader>j', '<C-w>j', opts)
map('n', '<Leader>k', '<C-w>k', opts)
map('n', '<Leader>l', '<C-w>l', opts)

-- Resize with arrows
map('n', '<C-Up>', ':resize -2<CR>', opts)
map('n', '<C-Down>', ':resize +2<CR>', opts)
map('n', '<C-Left>', ':vertical resize -2<CR>', opts)
map('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- 10x hjkl movement
map('n', 'H', '10h', opts)
map('n', 'J', '10j', opts)
map('n', 'K', '10k', opts)
map('n', 'L', '10l', opts)

-- Better indenting
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

-- Move selected line/block of text in visual mode
map('x', 'K', ":move '<-2<CR>gv-gv", opts)
map('x', 'J', ":move '>+1<CR>gv-gv", opts)

-- Clear search highlighting with <ESC> in normal mode
map('n', '<ESC>', ':noh<CR><ESC>', opts)
