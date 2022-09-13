@echo off
setlocal enableDelayedExpansion

goto :main

:main
setlocal
	
	call createstring2 sentence "A lot of stuff"
	call stringcenter sentence 40 fill
	
	echo !fill!
	
	
endlocal
goto :eof