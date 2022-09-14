@echo off
setlocal enableDelayedExpansion

goto :main

:main
setlocal

	call createarray array " " "what is this"
	call arrayappend array " " "thing"
	
	echo !array!

endlocal
goto :eof