vim.g.mapleader = ","
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<C-H>', '<C-W>h')
vim.keymap.set('n', '<C-J>', '<C-W>j')
vim.keymap.set('n', '<C-K>', '<C-W>k')
vim.keymap.set('n', '<C-L>', '<C-W>l')
vim.keymap.set('n', '<C-T>', ':ToggleTerm<CR>')
--Telescope mappings
vim.keymap.set('n', '<Leader>ff', '<CMD>Telescope find_files<CR>')
vim.keymap.set('n', '<Leader>fg', '<CMD>Telescope live_grep<CR>')
vim.keymap.set('n', '<Leader>fb', '<CMD>Telescope buffers<CR>')
vim.keymap.set('n', '<Leader>fh', '<CMD>Telescope help_tags<CR>')
vim.keymap.set('n', '<Leader>ld', '<CMD>Telescope diagnostics<CR>')
vim.keymap.set('n', '<Leader>fd', '<CMD>Telescope lsp_definition<CR>')

--Buffers
vim.keymap.set('n', '<Tab>', '<Plug>(cokeline-focus-next)')
