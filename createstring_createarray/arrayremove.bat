@echo off

:: call arrayremove array "delimiter" position

call createstring2 delimiter %2
set position=%3
set newarray=

set /a limit=!%1_length! - 1

if %position% gtr %limit% (
	goto :end
)

for /l %%g in ( 0,1,%limit% ) do (
	
	if %%g neq %position% (
		if %%g equ %limit% (
			set newarray=!newarray!!%1[%%g]!
		)else (
			set newarray=!newarray!!%1[%%g]!!delimiter!
		)
	)
)

if %position% equ %limit% (
	set newarray=!newarray:~0,-1!
)

call createarray %1 "!delimiter!" "!newarray!"

:end