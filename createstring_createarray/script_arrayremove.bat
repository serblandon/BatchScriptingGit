@echo off
setlocal enableDelayedExpansion

goto :main

:main
setlocal

	call createarray array " " "Hello this is a sentence"
	
	call arrayremove array " " 2
	
	echo !array!

endlocal
goto :eof