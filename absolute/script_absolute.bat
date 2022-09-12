@echo off
setlocal enableDelayedExpansion

goto :main

:main
setlocal
	
	call absolute -4 absolute
	echo !absolute!
	
endlocal
goto :eof