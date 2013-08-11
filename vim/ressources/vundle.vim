" Set up Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Allow plugins to eat `.`
Bundle 'tpope/vim-repeat'

" Delimiters
Bundle 'Raimondi/delimitMate'

" Fuzzy finder
"Bundle 'kien/ctrlp.vim'

" NERDTred
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'

Bundle 'scrooloose/nerdcommenter'

" Git
Bundle 'tpope/vim-fugitive'

" Syntax checking
Bundle 'scrooloose/syntastic'

" Tab completion
Bundle 'Valloric/YouCompleteMe'

" Indent guides, a la Sublime
"Bundle 'nathanaelkane/vim-indent-guides'


" Fix misspellings
Bundle 'chip/vim-fat-finger'

" Syntax highlightings
Bundle 'Markdown'
Bundle 'derekwyatt/vim-scala'
Bundle 'jQuery'
Bundle 'rails.vim'
Bundle 'ChrisYip/Better-CSS-Syntax-for-Vim'
Bundle 'lunaru/vim-less'
Bundle 'kchmck/vim-coffee-script'
Bundle 'leafgarland/typescript-vim'
Bundle 'wavded/vim-stylus'
Bundle 'digitaltoad/vim-jade'

" Auto-add "end" in Ruby
Bundle 'tpope/vim-endwise'

" Vim + iTerm2 + tmux
Bundle 'sjl/vitality.vim'

" Colorschemes
Bundle 'nanotech/jellybeans.vim'
Bundle 'summerfruit256.vim'

Bundle 'Lokaltog/powerline'
Bundle 'majutsushi/tagbar'

Bundle 'tpope/vim-unimpaired'

Bundle 'myusuf3/numbers.vim'

Bundle 'godlygeek/tabular'
" Bundle 'tomasr/molokai'

Bundle 'mileszs/ack.vim'

Bundle 'altercation/vim-colors-solarized'

Bundle 'SirVer/ultisnips'
Bundle 'spiroid/vim-ultisnip-scala'

Bundle 'Shougo/vimproc.vim'
Bundle 'Shougo/unite.vim'


" Finish up Vundle
filetype plugin indent on
syntax on
