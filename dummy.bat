@echo off
goto main

:say
	echo i am saying %~1
pause
goto :eof

:main
	echo main

	call :say tiger

goto :eof
