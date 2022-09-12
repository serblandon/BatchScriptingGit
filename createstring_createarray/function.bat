@echo off

setlocal enableDelayedExpansion

goto :main

:main
setlocal
	
	call createarray grocerylist " " "Bananas Apples Kiwis"
	echo !grocerylist!
	echo !grocerylist[1]!

endlocal
goto :eof