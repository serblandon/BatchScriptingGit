@echo off
setlocal enableDelayedExpansion

goto :main

:main
setlocal
	
	call createstring2 variable "Hello"
	call stringstart "!variable!" "Hello" result
	
	echo !result!
	
endlocal
goto :eof