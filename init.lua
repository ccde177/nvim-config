require('config/vimopts')
require('config/keymaps')

require('plugins')
require('config/plugins.devicons')
require('config/plugins.nvimtree')
require('config/plugins.lualine')
require('config/plugins.nvim-treesitter')
require('config/plugins.nvimtree')
require('config/plugins.telescope')

require('config/lsp')

vim.cmd[[colorscheme tokyonight]]
