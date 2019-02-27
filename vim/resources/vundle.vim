call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Allow plugins to eat `.`
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-eunuch'

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
  Plug 'w0rp/ale'
else
  " Tab completion
  Plug 'Shougo/neocomplete'
  " Syntax checking
  Plug 'scrooloose/syntastic'
endif

Plug 'Shougo/neosnippet.vim' | Plug 'Shougo/neosnippet-snippets'

" Syntax highlightings
Plug 'gabrielelana/vim-markdown', { 'for': ['markdown', 'md'] }
Plug 'derekwyatt/vim-scala', { 'for': ['scala'] }

" Better /
"Plug 'haya14busa/incsearch.vim'

Plug 'jlanzarotta/bufexplorer'

Plug 'tpope/vim-unimpaired'

Plug 'myusuf3/numbers.vim'

Plug 'Shougo/vimproc', { 'do': 'make' }

Plug 'christoomey/vim-tmux-navigator'

Plug 'simnalamburt/vim-mundo'

Plug 'rking/ag.vim'

Plug 'chrisbra/vim-diff-enhanced'

Plug 'tommcdo/vim-lion'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'metakirby5/codi.vim'

Plug 'hashivim/vim-terraform', { 'for': ['terraform'] }
Plug 'juliosueiras/vim-terraform-completion', { 'for': ['terraform'] }

call plug#end()
