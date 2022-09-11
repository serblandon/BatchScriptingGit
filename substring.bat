@echo off

setlocal enableDelayedExpansion

:main

	set string=This is a string
	
	echo !string:~8! 
	:: prints string after 8 characters
	
	echo !string:~8,7!
	:: prints string after 8 characters of 7 characters
	
	echo !string:~0,-6!
	:: prints string from the beginning until -6 characters from end
	
	echo !string:~-6,6!
	::prins string beginning at -6 characters from the end and prints 6 characters
	
	set string=!string:is=!
	::replaces is with nothing - removing
	
	echo !string:string=sentence!

pause
goto :eof