@echo off
setlocal enableDelayedExpansion

goto :main

:main
setlocal

	call createstring2 prop "123445"
	call join "!prop!" "+" result
	
	echo !result!

endlocal
goto :eof