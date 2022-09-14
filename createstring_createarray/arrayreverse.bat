@echo off

:: call arrayreverse array "delimiter"

call createstring2 delimiter %2

set newarray=

set /a limit=!%1_length! - 1

for /l %%g in ( %limit%,-1,0 ) do (
	if %%g equ 0 (
		set newarray=!newarray!!%1[%%g]!
	)else (
		set newarray=!newarray!!%1[%%g]!!delimiter!
	)
)

call createarray %1 "!delimiter!" "!newarray!"