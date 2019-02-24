" Wrap text automatically
:set textwidth=80

" Replace tabs by spaces
set expandtab

" Abbreviations for headings. Width: Entire iPhone SE screen.
iab <expr> <buffer> ttt repeat('+', 27)
iab <expr> <buffer> ddd repeat('=', 27)
iab <expr> <buffer> DDD repeat('-', 27)


" Templates
" =========
"
" Insert boilerplate text. Use %%% for fields that have to be inserted by the
" user.


" Template ..fig: figure
:imap <buffer> ..fig <C-O>mz.. figure:: %%%<CR>    :alt: %%%<CR>    :width: 60%<CR><CR>    %%%<CR><CR><C-O>'z;;

" ;; moves from field to field inside a template
:imap <buffer> ;; <C-O>/%%%<CR><C-O>c3l
:nmap <buffer> ;; /%%%<CR>c3l
