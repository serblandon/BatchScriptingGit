@echo off

:start
set /p MATH=What's your equation?
set /a RESULT=%MATH%
echo %MATH%
echo %RESULT%

set /p QUES=Do you want to compute again?(Y or N)

cls
if %QUES%==Y goto start