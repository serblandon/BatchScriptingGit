@echo off
setlocal enableDelayedExpansion

goto :main

:main
setlocal
	
	call createarray array " " "I am really hungry"
	
	call arrayinsert array " " "not" 2
	
	echo !array!
		
endlocal
goto :eof