@echo off
setlocal enableDelayedExpansion
goto :main

:main
setlocal
	
	set string=This is a string
	echo !string!
	
	for /f  "tokens=1-3" %%x in ( "!string!" ) do (
		echo %%x %%y %%z
	)
		

endlocal
pause
goto :eof