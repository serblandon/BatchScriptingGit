@echo off
setlocal enableDelayedExpansion

goto :main

:main
setlocal

	call createstring2 string "ASD WHAT"
	call tolower "!string!" return
	
	echo !return!

endlocal
goto :eof