" Use flake8 as linter, no others
let b:ale_linters = ['flake8']

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Encoding for Python should usually be UTF8
set encoding=utf-8

" Improve syntax highlighting
let python_highlight_all=1
syntax on

" Python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

" Let NERDTree ignore some files
let NERDTreeIgnore=['\.pyc$', '\~$']

" Map F5 to run python script
nnoremap <F5> <Esc>:w<CR>:!clear;python %<CR>

" Ensure proper indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix
