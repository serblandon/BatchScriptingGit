@echo off

:: call arrayindex array "find" return position

call createstring2 find %2
set position=%4

set %3=-1

if "!position!" equ "" (
	set position=0
)

set /a limit=!%1_length! - 1

for /l %%g in ( %position%,1,%limit% ) do (
	if "!%1[%%g]!" equ "!find!" (
		set %3=%%g
		goto :end
	)
)

:end