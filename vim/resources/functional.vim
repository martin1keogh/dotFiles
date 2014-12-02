" Indenting
set autoindent smartindent
set smarttab
set noexpandtab
set copyindent preserveindent
set softtabstop=0
set shiftwidth=2
set tabstop=2
set shiftround

" Remember lots of commands
set history=100

" Disable backup
set nobackup
set nowritebackup
set noswapfile

" Things to ignore
set wildignore=*~
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=node_modules
set wildignore+=*.png,*.jpg,*.gif,*.pdf
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.class,.svn,*.gem
set wildignore+=*.cmo,*.cmx,*.cma,*.cmi

" UTF-8 is the only format
set encoding=utf-8

set tags=./tags;$HOME
