"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup key bindings
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if !hasmapto('<Plug>StataRun')
	smap <unique> <c-z><c-x> <Plug>(StataRun)
endif

noremap <unique> <script> <silent> <Plug>(StataRun) <SID>stata_run
noremap <SID>stata_run :call <SID>stata_run()<CR>

function! s:stata_run()

	if system('pgrep -x xstata-se') == ""
		! xstata-se
	endif

	'<,'> y

	silent ! zsh ~/.vim/plugged/stata_run/plugin/copy_stata.zsh
endfunction

command -range -bar -nargs=0 '<,'>StataRun call s:stata_run()

