@echo off
setlocal enableDelayedExpansion

goto :main

:main
setlocal
	
	call createarray array " " "100 111 20"
	
	call sumarray array sum
	
	echo !sum!
		
	
endlocal
goto :eof