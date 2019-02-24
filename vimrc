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
" needed to have 80 columns + line number:
:set columns=85		
" allow backspace to delete beyond auto-indent, eol, and start of insertion:
:set backspace=indent,eol,start	
" do not replace tabs by spaces
:set noexpandtab
