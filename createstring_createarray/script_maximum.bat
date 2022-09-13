@echo off
setlocal enableDelayedExpansion

goto :main

:main
setlocal
	
	call createarray listofnumbers "," "1,23,0,999,-3,1231223"
	call maximum listofnumbers max

	echo !max!

endlocal
goto :eof