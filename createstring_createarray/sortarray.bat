@echo off

set arrayname=%1
call createstring2 delimiter %2

set /a limit=!%1_length! - 1

for /l %%g in ( 0,1,%limit% ) do (
	
	for /l %%h in ( %%g,1,%limit% ) do (
		
		if !%1[%%g]! gtr !%1[%%h]! (
			set /a temp=!%1[%%g]!
			call createstring2 %arrayname%[%%g] "!%arrayname%[%%h]!"
			call createstring2 %arrayname%[%%h] "!temp!"
		)
	)

)

for /l %%g in ( 0,1,%limit% ) do (
	set content=!content!!%arrayname%[%%g]!
	
	if not %%g equ %limit% (
		set content=!content!%delimiter%
	)
)

call createarray %arrayname% "%delimiter%" "%content%"