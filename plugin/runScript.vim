"==================================================================================
"File:runScript.vim
"Author:Kingrong
"License: MIT License
"==================================================================================

command! -nargs=* 
	\ RunInNode call runScript#runNode(<q-args>)
