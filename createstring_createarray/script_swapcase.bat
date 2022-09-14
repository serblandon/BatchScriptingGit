@echo off
setlocal enableDelayedExpansion

goto :main

:main
setlocal
	
	call createstring2 string "Hello World"
	call swapcase "!string!" result
	
	echo !result!
	
endlocal
goto :eof