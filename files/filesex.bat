@echo off

:start

echo -order (place order) -check (check order)
set /p ACTION=Select action: 
goto %ACTION%

:order
set /p ORDER=Place an order:
echo %ORDER% > text.txt
goto start


:check
set /p CHECK=What is your order?
for /f "Delims=" %%a in (text.txt) do (set TEXT=%%a)
if %CHECK%==%TEXT% goto correct

echo incorrect!
pause
exit

:correct
echo correct!
pause
