"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup key bindings
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if !hasmapto('<Plug>StataRun')
	xmap <F7> <Plug>(StataRun)
endif

xnoremap <unique> <script> <silent> <Plug>(StataRun) :<c-u> call <SID>stata_run()<CR>

function! s:stata_run()
	
	"let s:start_line = line('v') 
	"echo s:start_line
	silent ! zsh ~/.vim/plugged/stata_run/plugin/open_stata.zsh

	'<,'> y

	silent ! zsh ~/.vim/plugged/stata_run/plugin/copy_stata.zsh
	"exe s:start_line

endfunction

command -range -bar -nargs=0 StataRun call s:stata_run()

