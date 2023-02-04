-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {
		'ellisonleao/gruvbox.nvim',
		config = function()
			require("gruvbox").setup({
				contrast = "hard"
			})
			vim.cmd('colorscheme gruvbox')
		end
	}

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
	use('tpope/vim-surround')
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}


end)
