@echo off

setlocal enableDelayedExpansion

goto :main

:main
setlocal

	set string="This is a string"
	
	for /f "useback tokens=*" %%g in ('!string!') do set string=%%~g
	:: tokens=* -> we only loop once
	
	echo !string!

endlocal
pause
goto :eof