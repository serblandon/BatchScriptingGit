@echo off
setlocal enableDelayedExpansion
:: it takes the latest value of a variable (not from outside the loop)

set /p inputcode=Code:
:: we read the code to encrypt from a file with drag and drop. %1 is the cmnd line argument for the path of the file dragged
set /p code=<%1
set chars=0123456789abcdefghijklmnopqrstuvwxyz

:: for /L -- for iterating with the structure in paranthesis
for /L %%N in (10 1 36) do (

:: for /F for cycling through strings. first parameter is character and second is line
for /F %%C in ("!chars:~%%N,1!") do (

set /a MATH=%%N*%inputcode%

for /F %%F in ("!MATH!") do (

:: FOr each %%C an %%F will be assigned which is just a modified N
set "code=!code:%%C=-%%F!"

) 

)

)

echo !code! > encryptedtext.txt
pause