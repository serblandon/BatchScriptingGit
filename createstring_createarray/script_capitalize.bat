@echo off
setlocal enableDelayedExpansion

goto :main

:main
setlocal
	
	
	call createstring2 variable "this is a string"
	call capitalize "!variable!" return
	
	echo !return!
	
endlocal
goto :eof