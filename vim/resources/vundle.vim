call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'

" Allow plugins to eat `.`
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-eunuch'

" Language specific plugins
Plug 'thoughtbot/vim-rspec', { 'for': ['ruby'] }
Plug 'rake.vim', { 'for': ['ruby'] }
Plug 'ruby.vim', { 'for': ['ruby'] }
Plug 'tpope/vim-ruby', { 'for': ['ruby'] }

Plug 'elzr/vim-json', { 'for': 'json' }

Plug 'gerw/vim-latex-suite', { 'for': ['tex', 'latex'] }

" Delimiters
Plug 'jiangmiao/auto-pairs'

Plug 'kshenoy/vim-signature'

Plug 'scrooloose/nerdcommenter'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'


if has('nvim')
  " Tab completion
  Plug 'Shougo/deoplete.nvim'
  " Syntax checking
  Plug 'benekastah/neomake'
else
  " Tab completion
  Plug 'Shougo/neocomplete'
  " Syntax checking
  Plug 'scrooloose/syntastic'
endif

Plug 'Shougo/neosnippet.vim' | Plug 'Shougo/neosnippet-snippets'

" Syntax highlightings
Plug 'Markdown', { 'for': ['markdown', 'md'] }
Plug 'derekwyatt/vim-scala', { 'for': ['scala'] }

" Better /
Plug 'haya14busa/incsearch.vim'

Plug 'jlanzarotta/bufexplorer'

Plug 'tpope/vim-unimpaired'

Plug 'myusuf3/numbers.vim'

Plug 'Shougo/vimproc', { 'do': 'make' }

Plug 'christoomey/vim-tmux-navigator'

Plug 'simnalamburt/vim-mundo'

Plug 'rking/ag.vim'

Plug 'chrisbra/vim-diff-enhanced'

call plug#end()
