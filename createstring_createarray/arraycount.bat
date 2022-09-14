@echo off

::call arraycount array "find" return

call createstring2 find %2

set /a limit=!%1_length! - 1
set count=0

for /l %%g in ( 0,1,%limit% ) do (
	if "!%1[%%g]!" equ "!find!" (
		set /a count=!count! + 1
	)
)

set %3=%count%