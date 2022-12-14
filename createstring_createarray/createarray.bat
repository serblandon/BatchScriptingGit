@echo off

goto :main

:setindex
	
	call createstring2 %~1[%2] "!%~3!"

goto :eof

:main

	call createstring2 delimiter %2
	call createstring2 content %3
	
	set /a offset=0
	set /a index=0
	
	for /l %%g in ( 0, 1, %content_length% ) do (
	
		set character=!content:~%%g,1!
		
		if "!character!" equ "!delimiter!" (
			set /a length=%%g-!offset!
			call :setindex %1 !index! "content:~!offset!,!length!"
			
			set /a offset=%%g + 1
			set /a index=!index! + 1
		)
	
	)
	
	call :setindex %1 !index! content:~%offset%,%content_length%
	set /a %1_length=%index% + 1
	set %1=%content%
	
	set content=
	set length=
	set offset=
	set character=
	set delimiter=
	set index=


goto :eof