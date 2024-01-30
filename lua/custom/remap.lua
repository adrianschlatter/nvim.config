-- emacs-like navigation in command-line:
-- (<C-E> is already mapped to end of line)
vim.keymap.set('c', '<C-A>', '<Home>')
vim.keymap.set('c', '<C-F>', '<Right>')
vim.keymap.set('c', '<C-B>', '<Left>')

-- indenting and de-indenting in insert mode:
-- <C-D> means de-indent
-- <C-T> means indent; but this is my tmux prefix, so I remap it to <C-S>
vim.keymap.set('i', '<C-S>', '<C-T>')

-- indenting in visual mode (> and <) loses selection. I don't want that:
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- move and indent highlighted text blocks:
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- don't move cursor when joining lines:
vim.keymap.set('n', 'J', 'mzJ`z')

-- keep cursor centered when searching:
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- keep cursor centered when half-page scrolling:
vim.keymap.set('n', '<C-U>', '<C-U>zz')
vim.keymap.set('n', '<C-D>', '<C-D>zz')

-- don't lose selection when indenting:
vim.keymap.set('v', '<', '<gv')

-- quickfix window navigation:
vim.keymap.set('n', '<C-n>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-p>', '<cmd>cprev<CR>zz')
