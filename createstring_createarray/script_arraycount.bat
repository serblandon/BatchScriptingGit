@echo off
setlocal enableDelayedExpansion

goto :main

:main
setlocal

	call createarray array " " "This is a short is sentence"
	call arraycount array "is" return
	
	echo !return!

endlocal
goto :eof