return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'altercation/vim-colors-solarized'
	use 'morhetz/gruvbox'
	use { 
		'kyazdani42/nvim-tree.lua',
		requires = {
    			'kyazdani42/nvim-web-devicons',
  		},
		require("nvim-tree").setup()
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 
			'kyazdani42/nvim-web-devicons', opt = true 
		},
		require('lualine').setup{
			tabline = {
				lualine_a = {
					{
						'buffers',
						mode=2
					}
				},
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {}
			},
			options = { theme = 'gruvbox' }
		}
	}

    use {
        'sheerun/vim-polyglot'
    }

		use {
		'nvim-telescope/telescope.nvim',
		requires = { 'nvim-lua/plenary.nvim' }
	}

	use {
		'neoclide/coc.nvim', 
		branch = 'release'
	}

	use {
		"folke/which-key.nvim",
		require("which-key").setup{}
	}

end)
