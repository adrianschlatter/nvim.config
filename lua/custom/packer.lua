-- This file can be loaded by calling `lua require('plugins')` from your
-- init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {   -- fuzzy finder
		'nvim-telescope/telescope.nvim', tag = '0.1.3',
		requires = { 'nvim-lua/plenary.nvim' }
	}
	use {
		"catppuccin/nvim",    -- color scheme
		as = "catppuccin"
	}
	use {   -- parser for better highlighting
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	-- displays AST generated by treesitter
	use { 'nvim-treesitter/playground' }
	use { 'nvim-lua/plenary.nvim' }    -- required by harpoon below and telescope above
	use {   -- quick access for selected files
        'theprimeagen/harpoon',
        requires = { 'nvim-lua/plenary.nvim' }
    } 
	-- visualizes undo history (including branches):
	use { 'mbbill/undotree' } 
	use { 'tpope/vim-fugitive' }    -- git integration
    -- support for language servers:
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- LSP Support
			{'neovim/nvim-lspconfig'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	}
    -- indicator for which lsp is attached to current buffer:
    use { 'j-hui/fidget.nvim', tag = 'legacy' }
    -- commenting / uncommenting easily:
    -- gcc comments out a line, gc comments out the target of a motion
    use { 'tpope/vim-commentary' }
	-- debugging:
	use { 'mfussenegger/nvim-dap' }
	use {
		'mfussenegger/nvim-dap-python',
		requires = {'mfussenegger/nvim-dap'}
	}
	use {
		'rcarriga/nvim-dap-ui',
		requires = {'mfussenegger/nvim-dap'}
	}
    -- test runner:
    use { 'vim-test/vim-test' }
    -- GitHub Copilot:
    use { 'github/copilot.vim' }
    use {
          'nvim-lualine/lualine.nvim',
          requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    -- to show coverage information in gutter:
    use {
        'andythigpen/nvim-coverage',
        requires = { 'nvim-lua/plenary.nvim' }
    }
end)
