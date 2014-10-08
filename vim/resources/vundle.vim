" Set up Vundle
if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

filetype off
call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'bling/vim-airline'

NeoBundle 'justinmk/vim-sneak'

" Allow plugins to eat `.`
NeoBundle 'tpope/vim-repeat'

NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-surround'

NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'tpope/vim-dispatch'

" Delimiters
"NeoBundle 'Raimondi/delimitMate'
NeoBundle 'jiangmiao/auto-pairs'

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
NeoBundle 'Shougo/neocomplete'

NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

" Fix misspellings
NeoBundle 'chip/vim-fat-finger'

" Syntax highlightings
NeoBundle 'Markdown'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'jQuery'
NeoBundle 'rake.vim'
NeoBundle 'rails.vim'
NeoBundle 'ChrisYip/Better-CSS-Syntax-for-Vim'
NeoBundle 'tpope/vim-haml'

NeoBundle 'tpope/vim-rails'

NeoBundle 'mattn/emmet-vim'


NeoBundle 'majutsushi/tagbar'

NeoBundle 'tpope/vim-unimpaired'

NeoBundle 'myusuf3/numbers.vim'

NeoBundle 'mileszs/ack.vim'

NeoBundle 'altercation/vim-colors-solarized'

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

NeoBundle 'airblade/vim-gitgutter'

NeoBundle 'chriskempson/base16-vim'

NeoBundle 'sjl/gundo.vim'

NeoBundle 'vim-ruby/vim-ruby'

NeoBundle 'mdreves/vim-scaladoc'

NeoBundle 'kana/vim-textobj-user'
NeoBundle 'nelstrom/vim-textobj-rubyblock'

" Finish up Vundle
filetype plugin indent on
syntax on

NeoBundleCheck
