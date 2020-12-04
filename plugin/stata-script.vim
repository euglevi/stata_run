"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup key bindings
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



command -range -bar -nargs=0 StataRun call s:stata_run()

if !hasmapto('<Plug>StataRun')
		map <c-z><c-z> <Plug>StataRun
endif

function! s:stata_run()
	! zsh ~/.vim/plugged/stata_run/plugin/open_stata.zsh

	'<,'> y

	! zsh ~/.vim/plugged/stata_run/plugin/copy_stata.zsh
endfunction
