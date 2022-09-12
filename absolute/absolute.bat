@echo off

if %1 lss 0 (
	set /a %2=%1*-1
)else (
	set /a %2=%1
)