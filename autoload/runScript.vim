"==================================================================================
"File:runScript.vim
"Author:Kingrong
"License: MIT License
"==================================================================================


function! runScript#runNode(...) abort
	let s:file_name = expand("%:p")
	let s:bufnr = bufnr('%')
	let s:winnr = winnr()
	echo s:winnr
	if(exists("t:deol"))
		call deol#send('clear')
		call deol#send('node '.s:file_name)
		execute "normal! :botright split\r :b ".t:deol.bufnr."\r"
		execute "normal! :".s:winnr."wincmd w\r"
	else
		call deol#start('-no-start-insert')
		execute "normal! :b ".s:bufnr."\r"
		execute "normal! :botright split\r :b ".t:deol.bufnr."\r"
		execute "normal! :".s:winnr."wincmd w\r"
		call deol#send('node '.s:file_name)
	endif
endfunction
