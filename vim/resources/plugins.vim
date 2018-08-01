if has('nvim')
  "let g:neomake_scala_enabled_makers = ['scalac']
  "let g:neomake_verbose = -1
  "autocmd! BufWritePost * Neomake
else
  let g:syntastic_check_on_open=1
  let g:syntastic_enable_signs=1    " Put errors on left side
  let g:syntactic_quiet_messages = {'level': 'warnings'}
  let g:syntastic_auto_loc_list=2   " Only show errors when I ask
  let g:syntastic_disabled_filetypes = ['html', 'js']
  let g:syntastic_mode_map = { "mode": "active",
                            \ "passive_filetypes": ["scala"] }
  if has('unix')
	  let g:syntastic_error_symbol='★'
	  let g:syntastic_style_error_symbol='>'
	  let g:syntastic_warning_symbol='⚠'
	  let g:syntastic_style_warning_symbol='>'
  else
	  let g:syntastic_error_symbol='!'
	  let g:syntastic_style_error_symbol='>'
	  let g:syntastic_warning_symbol='.'
	  let g:syntastic_style_warning_symbol='>'
  endif
endif

let g:ale_lint_on_text_changed = 'never'

let g:airline_powerline_fonts=1
let g:airline_theme='bubblegum'

let gundo_prefer_python3=1
nnoremap <F5> :GundoToggle<CR>

runtime macros/matchit.vim
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
if has('nvim')
  let g:deoplete#enable_at_startup = 1
  set ofu=syntaxcomplete#Complete
else
  " " Use neocomplete.
  let g:neocomplete#enable_at_startup = 1
  " " Use smartcase.
  let g:neocomplete#enable_smart_case = 1
  " " Set minimum syntax keyword length.
  let g:neocomplete#sources#syntax#min_keyword_length = 2
  let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
endif

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
      \ 'default' : '',
      \ 'vimshell' : $HOME.'/.vimshell_hist',
      \ 'scheme' : $HOME.'/.gosh_completions'
      \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] ='\h\w*'

" Plugin key-mappings.
inoremap <expr><Tab> neocomplete#complete_common_string()

if !has('nvim')
  " Recommended key-mappings.
  " <CR>: close popup and save indent.
  inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
  function! s:my_cr_function()
    return neocomplete#close_popup() . "\<CR>"
  endfunction
  " <C-h>, <BS>: close popup and delete backword char.
  inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
  inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
endif

imap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

imap <C-k>     <Plug>(neosnippet_expand)
smap <C-k>     <Plug>(neosnippet_expand)
imap <C-l>     <Plug>(neosnippet_jump)
smap <C-l>     <Plug>(neosnippet_jump)

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby,eruby setlocal omnifunc=rubycomplete#Complete

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

"map / <Plug>(incsearch-forward)
"map ? <Plug>(incsearch-backward)
"let g:incsearch#auto_nohlsearch = 1
"map n  <Plug>(incsearch-nohl-n)
"map N  <Plug>(incsearch-nohl-N)
"map *  <Plug>(incsearch-nohl-*)
"map #  <Plug>(incsearch-nohl-#)
"map g* <Plug>(incsearch-nohl-g*)
"map g# <Plug>(incsearch-nohl-g#)

let &diffexpr='EnhancedDiff#Diff("git diff", "--diff-algorithm=patience")'

cnoreabbrev <expr> ag ((getcmdtype() is# ':' && getcmdline() is# 'ag')?('Ag!'):('ag'))
autocmd BufEnter,FileType * execute 'let g:ag_prg="ag --vimgrep --smart-case --'.&ft.'"'

nnoremap <silent> <leader><space> :Files<CR>
nnoremap <silent> <leader>gl :Commits<CR>

let g:codi#rightalign = 0
