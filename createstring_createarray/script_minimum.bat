@echo off
setlocal enableDelayedExpansion

goto :main

:main
setlocal

	call createarray listofnumbers "," "45,534,2,65,7,-2,-34,1"
	call minimum listofnumbers min
	echo !min!

endlocal
goto :eof