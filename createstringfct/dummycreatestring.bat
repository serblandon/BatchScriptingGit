@echo off
setlocal enableDelayedExpansion

goto :main

:main
setlocal
	
	call createstring2.bat variable "Alabala"
	
	echo !variable!
	
	echo !variable_length!
	pause
endlocal
goto :eof
pause