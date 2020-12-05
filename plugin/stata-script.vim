"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup key bindings
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if !hasmapto('<Plug>StataRun')
	map <unique>  <Leader>z <Plug>(StataRun)

noremap <unique> <script> <silent> <Plug>(StataRun) :call <SID>stata_run()<CR>

function! s:stata_run()

	if system('pgrep -x xstata-se') == ""
		! xstata-se
	endif

	'<,'> y

	silent ! zsh ~/.vim/plugged/stata_run/plugin/copy_stata.zsh
endfunction

command -range -bar -nargs=0 StataRun call s:stata_run()

