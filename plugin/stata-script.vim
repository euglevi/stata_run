"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup key bindings
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



command -range -bar -nargs=0 StataRun call s:stata_run()
noremap <unique> <script> <silent> <Plug>StataRun :<c-u>StataRun<cr>

map <unique> <silent>  <c-z><c-z> <Plug>StataRun

function! s:stata_run()
	execute "silent ! zsh ~/.vim/plugged/stata_run/plugin/open_stata.zsh" 
	'<,'> y

	! zsh ~/.vim/plugged/stata_run/plugin/copy_stata.zsh
endfunction
