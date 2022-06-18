require('config/vimopts')
require('config/keymaps')

require('plugins')
require('config/plugins.devicons')
require('config/plugins.nvimtree')
require('config/plugins.lualine')
require('config/plugins.nvim-treesitter')
require('config/plugins.nvimtree')
require('config/plugins.telescope')
require('config/plugins.nvim-cmp')
require('config/plugins.cokeline')
require('config/plugins.colorizer')

require('config/lsp')

require('toggleterm').setup{}
vim.cmd[[colorscheme tokyonight]]
--require('onedark').setup {
--    style = "dark"
--}
--require('onedark').load()

function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-t>', [[<C-\><C-n>:ToggleTerm<CR>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

