local map = vim.keymap.set

map('n', '<Esc>', '<cmd>nohlsearch<CR>')

map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

map('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
map('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
map('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
map('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- map("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- map("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- map("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- map("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

map('n', ';', ':', { desc = 'semicolon' })
-- rebind j/k with gj/gk
map('n', 'j', function()
  return vim.v.count == 0 and 'gj' or 'j'
end, { expr = true, noremap = true })
map('n', 'k', function()
  return vim.v.count == 0 and 'gk' or 'k'
end, { expr = true, noremap = true })

-- Resize window using <ctrl> arrow keys
map('n', '<C-Up>', '<cmd>resize +2<cr>', { desc = 'Increase Window Height' })
map('n', '<C-Down>', '<cmd>resize -2<cr>', { desc = 'Decrease Window Height' })
map('n', '<C-Left>', '<cmd>vertical resize -2<cr>', { desc = 'Decrease Window Width' })
map('n', '<C-Right>', '<cmd>vertical resize +2<cr>', { desc = 'Increase Window Width' })

-- Useful edit keymaps
map('x', '<leader>p', [["_dP]], { desc = 'Primeagen Paste' })
map('n', '<C-d>', '<C-d>zz', { desc = 'Scroll plus zz' })
map('n', '<C-u>', '<C-u>zz', { desc = 'Scroll plus zz' })
map('n', 'n', 'nzzzv', { desc = 'next find item plus zz' })
map('n', 'N', 'Nzzzv', { desc = 'prev find item plus zz' })
map('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move Line Up' })
map('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move Line Down' })
map({ 'n', 'v' }, '<leader>sa', 'ggVG', { desc = 'Select All' })
