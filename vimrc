set nocompatible

source ~/.vim/resources/vundle.vim

let g:neocomplete#enable_at_startup = 1

set ofu=syntaxcomplete#Complete

source ~/.vim/resources/functional.vim
source ~/.vim/resources/languages.vim
source ~/.vim/resources/interface.vim
source ~/.vim/resources/plugins.vim

if filereadable(expand("~/.vimrc.local"))
	source ~/.vimrc.local
endif


