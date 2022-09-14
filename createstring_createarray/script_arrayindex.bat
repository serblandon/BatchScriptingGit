@echo off
setlocal enableDelayedExpansion

goto :main

:main
setlocal

	call createarray array " " "This is a batch script"
	call arrayindex array "batch" return
	
	echo !return!

endlocal
goto :eof