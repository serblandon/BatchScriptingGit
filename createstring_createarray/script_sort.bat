@echo off
setlocal enableDelayedExpansion

goto :main

:main
setlocal
	
	call createarray numbers "," "23,4,635,43,74,2,764"
	echo !numbers!
	echo.
	
	call sortarray numbers ","
	echo !numbers!
	
endlocal
goto :eof