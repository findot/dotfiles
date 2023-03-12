
local telescope = require('telescope.builtin')
local map = require('utils').map

-- Replace HJKL with JKL: 
map('nv', ';', 'l')
map('nv', 'l', 'k')
map('nv', 'k', 'j')
map('nv', 'j', 'h')

-- Buffer switching
map('n', '<C-k>', ':bnext<CR>')
map('n', '<C-l>', ':bprev<CR>')
--
-- Window switching
map('n', '<C-w>;', '<C-w>l')
map('n', '<C-w>l', '<C-w>k')
map('n', '<C-w>k', '<C-w>j')
map('n', '<C-w>j', '<C-w>h')

-- Toggle filetree
map('n', '<C-h>', ':NvimTreeToggle<CR>')

-- Close current buffer
map('n', '<C-w><C-w>', ':bd<CR>')

-- Fuzzy finder
map('n', '<leader>ff', telescope.find_files)
map('n', '<leader>fg', telescope.live_grep)
map('n', '<leader>fb', telescope.buffers)
map('n', '<leader>fh', telescope.help_tags)

-- Terminal
map('n', '<leader>tt', ':edit term://zsh<CR>')

