@echo off

call createarray upper " " "A B C D E F G H I J K L M N O P Q R S T U V W X Y Z"
call createarray lower " " "a b c d e f g h i j k l m n o p q r s t u v w x y z"

call createstring2 string %1

set /a limit=%upper_length% - 1
set first=%string:~0,1%

for /l %%g in ( 0,1,%limit% ) do (
	if !lower[%%g]! equ !first! (
		set %2=!upper[%%g]!
		goto :end
	)
)

set %2=!first!

:end
set %2=!%2!!string:~1!