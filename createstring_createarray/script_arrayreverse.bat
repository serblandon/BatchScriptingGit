@echo off
setlocal enableDelayedExpansion

goto :main

:main
setlocal

	call createarray array " " "This is a new array"
	call arrayreverse array " "
	
	echo !array!

endlocal
goto :eof