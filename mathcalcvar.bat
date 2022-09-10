@echo off

:start

set /p X1=First numbers is:

set /p X2=Second numbers is:

set /a RESULT=X1+X2

echo %RESULT%

pause
cls
goto start