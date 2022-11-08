return require('packer').startup(function(use)
	-- packer itself
	use 'wbthomason/packer.nvim'

	-- treesitter
	use {
        	'nvim-treesitter/nvim-treesitter',
        	run = function() require('nvim-treesitter.install').update({ with_sync = true }) end, -- :TSUpdate
--		require "plugins.treesitter"
    	}

	-- Lsp
	use 'neovim/nvim-lspconfig'
	use {"williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim"}

	-- completion
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/cmp-nvim-lsp'
	use "saadparwaiz1/cmp_luasnip"

	-- snippets
	use "rafamadriz/friendly-snippets"
	use "L3MON4D3/LuaSnip"

	-- Impatient for faster startup
 	use 'lewis6991/impatient.nvim'

	-- feline
	use 'feline-nvim/feline.nvim'

	-- colorscheme
	use {
		"catppuccin/nvim",
		as = "catppuccin",
		config = function()
			vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
			vim.api.nvim_command "colorscheme catppuccin"
--			require "plugins.catppuccin"
		end
	}

	-- colorizer
	use 'norcalli/nvim-colorizer.lua'

	-- nvim tree
	use {
 		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
--	require "plugins.nvimtree"

	-- discord rich presence
	use {
		"andweeb/presence.nvim",
--		require "plugins.presence"
	}

	-- nvim dashboard
	use({ "goolord/alpha-nvim" })

	-- telescope
	use {
  		'nvim-telescope/telescope.nvim', tag = '0.1.0',
	-- or                            , branch = '0.1.x',
  		requires = 'nvim-lua/plenary.nvim'
	}
--	use "nvim-telescope/telescope-file-browser.nvim" -- file browser extension
--	use 'nvim-telescope/telescope-project.nvim'

	-- indent lines
	use 'lukas-reineke/indent-blankline.nvim'

end)
