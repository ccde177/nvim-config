
return require("packer").startup(function()
    --Packer
    use 'wbthomason/packer.nvim'
    --Colorscheme
	use 'folke/tokyonight.nvim'
    --Syntax parser for highlighting
  	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'nvim-treesitter/playground'
    --fs tree
	use {
	    'kyazdani42/nvim-tree.lua',
	    requires = {
		'kyazdani42/nvim-web-devicons', -- optional, for file icon
	    },
	    tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
    --pesudo-ui
	use {
	    'nvim-telescope/telescope.nvim',
	    requires = { {'nvim-lua/plenary.nvim'} }
	}
    use 'nvim-telescope/telescope-ui-select.nvim'
    --indent marking
	use "lukas-reineke/indent-blankline.nvim"
    --statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    --lsp related stuff
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    --Rust related stuff
    --use 'simrat39/rust-tools.nvim'
    --vsnip
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    --t
    use {
        'goolord/alpha-nvim',
        requires = { 'kyazdani42/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.config)
        end
    }
end)

