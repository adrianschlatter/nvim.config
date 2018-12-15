" configure vundle plugin manager and plugins
:source ~/.vim/vimrc-vundle

" make vim read the filetype-specific  configurations
" in ./ftplugin and ./after/ftplugin:
filetype plugin on

:colorscheme koehler
:syntax on
:imap hh <Esc>

" show line numbers:
:set number
:set columns=85		" needed to have 80 columns + line numbers
