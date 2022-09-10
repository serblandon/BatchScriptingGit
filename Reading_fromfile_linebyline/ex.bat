@echo off

for /F "tokens=* delims=" %%x in (inputfile.txt) do (

echo %%x >> output.txt

)
pause