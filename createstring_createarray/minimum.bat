@echo off

set /a limit=%1_length - 1

for /l %%g in ( 0, 1, %limit% ) do (
	if %%g equ 0 (
		set minimum=!%1[%%g]!
	)else (
		if !%1[%%g]! lss !minimum! (
			set minimum=!%1[%%g]!
		)
	)

)

set %2=!minimum!