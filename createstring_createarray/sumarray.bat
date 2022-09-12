@echo off

set /a limit=!%1_length! - 1
set sum=0

for /l %%g in ( 0,1,%limit% ) do (
	set /a sum=!sum! + !%1[%%g]!
)

set %2=!sum!