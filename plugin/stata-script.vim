"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup key bindings
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


function! stata_run()
	! zsh open_stata.zsh

	'<,'> y

	! zsh copy_stata.zsh
endfunction

command -range -bar -nargs=1 StataRun call stata_run()

if !hasmapto('<Plug>StataRun')
		map <c-z><c-z> <Plug>StataRun
endif

