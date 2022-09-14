@echo off

:: call arrayinsert array "delimiter" "value" position

call createstring2 delimiter %2
call createstring2 value %3
set position=%4
set newarray=

set /a limit=!%1_length! - 1

for /l %%g in ( 0,1,%limit% ) do (
	if %%g equ %position% (
		set newarray=!newarray!!value!!delimiter!
	)
	
	if %%g equ %limit% (
		set newarray=!newarray!!%1[%%g]!
	)else (
		set newarray=!newarray!!%1[%%g]!!delimiter!
	)
)

call createarray %1 "!delimiter!" "!newarray!"