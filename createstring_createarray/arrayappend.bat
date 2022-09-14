@echo off

::call arrayappend array "delimiter" "toappend"

call createstring2 delimiter %2
call createstring2 toappend %3

set temp=!%1_length!
set %1[!temp!]=!toappend!

set /a %1_length=!temp! + 1
set %1=!%1!!delimiter!!toappend!