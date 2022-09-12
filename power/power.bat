@echo off

if %2 equ 0 (
	set /a %3=1
	goto :eof
)

if %1 equ 0 (
	set /a %3=0
	goto :eof
)


set /a product=%1
set /a limit=%2 - 1

for /l %%g in ( 1,1,%limit% ) do (
	set /a product=!product! * %1
)

set %3=!product!