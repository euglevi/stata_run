"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup key bindings
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

command -range -bar -nargs=0 StataRun call s:stata_run()
noremap <unique> <script> <silent> <Plug>(StataRun) :<c-u> call <SID>stata_run()<CR>

if !hasmapto('<Plug>StataRun', 'x')
	xmap <C-a><C-a> <Plug>(StataRun)
endif

function! s:stata_run()
	
	silent ! zsh ~/.vim/plugged/stata_run/plugin/open_stata.zsh

	'<,'>w! ~/t.do 

	silent ! zsh ~/.vim/plugged/stata_run/plugin/copy_stata.zsh
	redraw!

endfunction


