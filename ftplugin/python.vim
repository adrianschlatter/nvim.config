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

" Let NERDTree ignore some files
let NERDTreeIgnore=['\.pyc$', '\~$']

" Map F5 to run python script
nnoremap <F5> :call <SID>run()<CR>

function! s:run()
	exec 'w'
	exec 'AsyncRun! time python %'
endfunction

" Ensure proper indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix
