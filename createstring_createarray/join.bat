@echo off

:: call join "!content!" "!join!" result

call createstring2 content %1
call createstring2 join %2

set /a limit=%content_length% - 1 

for /l %%g in ( 0,1,%limit% ) do (
	
	if not %%g equ %limit% (
		set %3=!%3!!content:~%%g,1!!join!
	)else (
		set %3=!%3!!content:~%%g,1!
	)
)