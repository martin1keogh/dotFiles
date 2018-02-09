" Syntax highlighting
"set t_Co=256
if has('syntax')
	syntax on
endif
"colorscheme jellybeans

" Split in the correct direction
set splitbelow
set splitright

" Space is leader
let mapleader = ' '
let g:mapleader = ' '

" Map Y to act like D and C: yank to EOL
map Y y$

" When moving up/down, go visually, not by line
map j gj
map k gk

" I accidentally do these commands more than I would ever use them
nnoremap K <nop>
nnoremap Q <nop>

" :W == :w
cnoreabbrev W w

" 0 is ^
noremap 0 ^

" Restore previous cursor position
if has('autocmd')
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" Searching
set ignorecase    " Ignore case when searching...
set smartcase     " ...unless there are caps.
set incsearch     " Incremental search
set hlsearch      " Highlight matches
set gdefault      " Assume global search

" Undo level
set ul=100

" Save undo history
set undodir=~/.vim_undo
set undofile

" Let us make our commands beautiful
set wildmenu
set wildmode=list:longest,full
set wildignorecase

" Timeout on multi-key stuff
set ttimeout
set ttimeoutlen=50

" gvim
if has('gui_running')
	" Font
	set guifont=Source\ Code\ Pro:h14
	set antialias

	" Hide toolbar
	set guioptions-=T

	" Hide scrollbars on both sides
	set guioptions-=r
	set guioptions-=L

  " Cursor stuff
  highlight Cursor guifg=black guibg=grey
  set guicursor=n-c-v:block-Cursor-blinkon0
  set guicursor+=i:ver10-Cursor
end

" Show line numbers
set number

" Show matching bracket when you hover on one
set showmatch

" Allow non-visible modified buffers
set hidden

" Soft wrap by word
set wrap
set linebreak
set textwidth=0
set wrapmargin=0

" Scroll 4 lines away from margins
set scrolloff=4

" Make sure the line height is 1 line, not some other madness
set linespace=1

" English language
if has('spell')
	silent! language messages "en"
	set langmenu=none
	set spl=en
endif

" No error bells nor visual alerts
set noerrorbells
set visualbell t_vb=

set background=dark

colorscheme hybrid

cnoremap w!! w !sudo tee % >/dev/null

nnoremap gb :ls<CR>:buffer<Space>
nnoremap <Leader>e :e <C-R>=expand('%:p:h') . '/'<CR>
nnoremap <Leader>s :sp <C-R>=expand('%:p:h') . '/'<CR>
nnoremap <Leader>v :vsp <C-R>=expand('%:p:h') . '/'<CR>

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands

set foldmethod=indent
set foldlevel=99

" Always show statusline
set laststatus=2

set t_Co=256
set t_ut=

set expandtab
set nomore

set mouse=

set fillchars=vert:│,fold:-
highlight VertSplit cterm=none ctermbg=none ctermfg=247
