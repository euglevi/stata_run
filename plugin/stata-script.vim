"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup key bindings
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if !hasmapto('<Plug>StataRun')
	xmap <c-a><c-a> <Plug>(StataRun)
endif

xnoremap <unique> <script> <silent> <Plug>(StataRun) :<c-u> call <SID>stata_run()<CR>

function! s:stata_run()
	
	silent ! zsh ~/.vim/plugged/stata_run/plugin/open_stata.zsh

	'<,'>w! ~/t.do 

	silent ! zsh ~/.vim/plugged/stata_run/plugin/copy_stata.zsh
	redraw!

endfunction

command -range -bar -nargs=0 StataRun call s:stata_run()

