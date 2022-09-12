@echo off
setlocal enableDelayedExpansion

goto :main


:main
setlocal
	
	call range numbers "," 15 30 5
	echo !numbers!
	
endlocal
goto :eof