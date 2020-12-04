"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup key bindings
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



command -range -bar -nargs=1 StataRun call s:stata_run()

if !hasmapto('<Plug>StataRun')
		map <c-z><c-z> <Plug>StataRun
endif

