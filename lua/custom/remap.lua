-- emacs-like navigation in command-line:
vim.keymap.set('c', '<C-A>', '<Home>')
vim.keymap.set('c', '<C-F>', '<Right>')
vim.keymap.set('c', '<C-B>', '<Left>')

-- move and indent highlighted text blocks:
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")

-- don't move cursor when joining lines:
vim.keymap.set('n', 'J', 'mzJ`z')

