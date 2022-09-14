@echo off

::call swapcase "!content!" return

goto :main

:setcharacter
	set newstring=!newstring!!%~1!
goto :eof

:main
	
	call createarray alphabet " " "A B C D E F G H I J K L M N O P Q R S T U V W X Y Z a b c d e f g h i j k l m n o p q r s t u v w x y z"
	
	call createstring2 content %1
	
	set /a limit=%content_length% - 1
	set /a alphabetlimit=%alphabet_length% - 1
	
	set newstring=
	
	for /l %%g in ( 0,1,%limit% ) do (
		set character=!content:~%%g,1!
		set found=false
		
		for /l %%h in ( 0,1,%alphabetlimit% ) do (
			if "!character!" equ "!alphabet[%%h]!" (
				if %%h geq 26 (
					set /a lower=%%h - 26
					
					call :setcharacter alphabet[!lower!]
					set found=true
				)
				if %%h leq 26 (
					set /a upper=%%h + 26
					
					call :setcharacter alphabet[!upper!]
					set found=true
				)
			)
		)
		if "!found!" equ "false" (
				set newstring=!newstring!!character!
		)
	)
	
	set %2=!newstring!
	
goto :eof