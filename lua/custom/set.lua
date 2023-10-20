-- block cursor:
vim.opt.guicursor = ""

-- line numbers and relative line numbers:
vim.opt.nu = true
vim.opt.relativenumber = true

-- indenting:
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- no line wrapping:
vim.opt.wrap = false

-- don't create backups but use persistent undotree:
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'

-- don't keep search highlighted but do incremental search:
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- 24bit color in the TUI:
vim.opt.termguicolors = true

-- no less than 8 lines "look-ahead" / "look-behind":
vim.opt.scrolloff = 8

-- always show sign-column:
vim.opt.signcolumn = 'yes'

-- highlight column 80:
vim.opt.colorcolumn = '80'

-- leader key is space:
vim.g.mapleader = ' '

