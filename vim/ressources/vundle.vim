" Set up Vundle
if has('vim_starting')
 	set nocompatible               " Be iMproved
 	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))
set nocompatible
filetype off

NeoBundleFetch 'Shougo/neobundle.vim'

" Allow plugins to eat `.`
NeoBundle 'tpope/vim-repeat'

" Delimiters
NeoBundle 'Raimondi/delimitMate'

" Fuzzy finder
"NeoBundle 'kien/ctrlp.vim'

" NERDTred
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jistr/vim-nerdtree-tabs'

NeoBundle 'scrooloose/nerdcommenter'

" Git
NeoBundle 'tpope/vim-fugitive'

" Syntax checking
NeoBundle 'scrooloose/syntastic'

" Tab completion
NeoBundle 'Valloric/YouCompleteMe'

" Fix misspellings
NeoBundle 'chip/vim-fat-finger'

" Syntax highlightings
NeoBundle 'Markdown'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'jQuery'
NeoBundle 'rails.vim'
NeoBundle 'ChrisYip/Better-CSS-Syntax-for-Vim'
NeoBundle 'lunaru/vim-less'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'wavded/vim-stylus'
NeoBundle 'digitaltoad/vim-jade'

" Auto-add "end" in Ruby
NeoBundle 'tpope/vim-endwise'

" Vim + iTerm2 + tmux
"NeoBundle 'sjl/vitality.vim'
NeoBundle 'vimoutliner/vimoutliner'

" Colorschemes
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'summerfruit256.vim'

NeoBundle 'Lokaltog/powerline'
NeoBundle 'majutsushi/tagbar'

NeoBundle 'tpope/vim-unimpaired'

NeoBundle 'myusuf3/numbers.vim'

NeoBundle 'godlygeek/tabular'
" NeoBundle 'tomasr/molokai'

NeoBundle 'mileszs/ack.vim'

NeoBundle 'altercation/vim-colors-solarized'

NeoBundle 'SirVer/ultisnips'
NeoBundle 'spiroid/vim-ultisnip-scala'

NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
NeoBundle 'Shougo/unite.vim'

NeoBundle 'aaronbieber/quicktask'

NeoBundle 'gerw/vim-latex-suite'
NeoBundle 'christoomey/vim-tmux-navigator'

NeoBundle 'elzr/vim-json'

NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

NeoBundle 'mdreves/vim-scaladoc'
" Finish up Vundle
filetype plugin indent on
syntax on

NeoBundleCheck
