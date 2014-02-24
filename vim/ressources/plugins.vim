let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1    " Put errors on left side
let g:syntactic_quiet_messages = {'level': 'warnings'}
let g:syntastic_auto_loc_list=2   " Only show errors when I ask
let g:syntastic_disabled_filetypes = ['html', 'js']
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

nmap <silent> <c-n> :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_gui_startup=0
let g:nerdtree_tabs_autoclose=1
if has('autocmd')
	au Filetype nerdtree setlocal nolist  " No hidden characters in NERDTree
endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:acp_enableAtStartup = 0

if version >= 702
	let g:indent_guides_enable_on_vim_startup = 1
	let g:indent_guides_start_level = 2
	let g:indent_guides_guide_size = 1
endif

let g:UltiSnipsExpandTrigger="<C-j>"
"let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

nnoremap <C-p> :Unite -start-insert file_rec/async:!<cr>
nnoremap <space>/ :Unite -start-insert grep:.<cr>
" use ag if available
if executable('ag')
	let g:unite_source_grep_command = 'ag'
	let g:unite_source_grep_default_opts = '--nogroup --column --nocolor'
	let g:unite_source_grep_recursive_opt = ''
" Use ack in unite grep source.
else
	let g:unite_source_grep_command = 'ack-grep'
	let g:unite_source_grep_default_opts = '--no-heading --no-color -a'
	let g:unite_source_grep_recursive_opt = ''
endif

let g:airline_powerline_fonts=1
let g:airline_theme='bubblegum'
