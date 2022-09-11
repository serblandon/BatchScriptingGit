@echo off

set string=%2
set /a takeaway=5

for /f "useback tokens=*" %%a in ('%string%') do (

	if %string% equ %%~a (
		set /a takeaway=3
	)

	set string=%%~a
)

echo %2 > temp.txt

for %%g in ( temp.txt ) do (
	set /a %1_length=%%~zg - %takeaway%
)
del temp.txt
set %1=%string%

:: 5 because 2 bytes are for "" 1 byte the space at the end of %2 and 2 bytes for line feed
::to run this file from anywhere in the pc this script has to be in the default path of the pc: c:Windows:system32...
