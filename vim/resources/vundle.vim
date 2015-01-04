" Set up Vundle
if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim_bundle/neobundle.vim/
endif

filetype off
call neobundle#begin(expand('~/.vim_bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'bling/vim-airline'

" Allow plugins to eat `.`
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'tpope/vim-eunuch'

NeoBundle 'thoughtbot/vim-rspec'

" Delimiters
NeoBundle 'jiangmiao/auto-pairs'

NeoBundle 'kshenoy/vim-signature'

NeoBundle 'scrooloose/nerdcommenter'

" Git
NeoBundle 'tpope/vim-fugitive'

" Syntax checking
NeoBundle 'scrooloose/syntastic'

" Tab completion
NeoBundle 'Shougo/neocomplete'

" Syntax highlightings
NeoBundle 'Markdown'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'rake.vim'
NeoBundle 'rails.vim'
NeoBundle 'pangloss/vim-javascript'

NeoBundle 'tpope/vim-rails'

" Better /
NeoBundle "haya14busa/incsearch.vim"

NeoBundle "jlanzarotta/bufexplorer"

NeoBundle 'tpope/vim-unimpaired'

NeoBundle 'myusuf3/numbers.vim'

NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }

NeoBundle 'gerw/vim-latex-suite'

NeoBundle 'christoomey/vim-tmux-navigator'

NeoBundle 'elzr/vim-json'

NeoBundle 'airblade/vim-gitgutter'

NeoBundle 'sjl/gundo.vim'

NeoBundle 'vim-ruby/vim-ruby'

call neobundle#end()

" Finish up Vundle
filetype plugin indent on
syntax on

NeoBundleCheck
