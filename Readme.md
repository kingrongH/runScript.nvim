# runScript.nvim

runScript.nvim is a plugin that can run script immediately(Now only support node)
This plug open a deol shell at bottom below and show the result in the shell.


## Requirements

runScript.nvim is based on [shougo/deol.nvim](https://github.com/Shougo/deol.nvim).

for vim-plug:
```vimscript
	Plug 'shougo/deol.nvim'
	Plug 'KingrongH/runScript.nvim'
```

for dein:

```vimscript
	call dein#add('shougo/deol.nvim')
	call dein#add('KingrongH/runScript.nvim')
```

## Quick start

you can run the script of your buffer by the command below

	:RunInNode

now only support run with node 
