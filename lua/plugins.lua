
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
    --completion
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    --Rust related stuff
    use 'rust-lang/rust.vim'
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
    --Terminal
    use {"akinsho/toggleterm.nvim", tag = 'v1.*', config = function()
        require("toggleterm").setup()
    end}
    --use 'navarasu/onedark.nvim'
    --Auto-closing brackets and etc
    use 'jiangmiao/auto-pairs'
    --Cokeline tabs
    use ({
        'noib3/nvim-cokeline',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function () 
            require('cokeline').setup()
        end
    })
    --Colorizer 
    use  'norcalli/nvim-colorizer.lua'
end)

