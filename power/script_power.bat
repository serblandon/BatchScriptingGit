@echo off
setlocal enableDelayedExpansion

goto :main

:main
setlocal

	call power 2 4 power
	echo !power!

endlocal
goto :eof