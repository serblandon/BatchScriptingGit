@echo off

call createstring2 delimiter %2

set start=%3
set stop=%4	
set step=%5

if "%stop%" equ "" (
	set /a stop=%start%
	set /a start=0
)

if "%step%" equ "" (
	set /a step=1
)

set content=

for /l %%g in ( %start%,%step%,%stop%) do (
	set content=!content!%%g
	
	if not %%g equ %stop% (
		set content=!content!%delimiter%
	)
)

call createarray %1 "%delimiter%" "!content!"