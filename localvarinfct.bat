@echo off

goto :main

:func
setlocal
	echo Func says P is %p%
	set x=30	
	echo Func says x is %x%
endlocal	
goto :eof

:main
setlocal
	echo Main is being called
	set p=4
	echo main says p is %p%
	
	call :func
	
	echo main says x is %x%
	pause
endlocal
goto :eof

:: func has access to main variables because it is called in main
:: endlocal deletes variables that it's seen