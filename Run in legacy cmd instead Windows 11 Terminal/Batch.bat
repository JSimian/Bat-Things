@echo off
::Source: https://github.com/JSimian/Bat-Things/

set id=%random%
title %id%
tasklist /v /fo csv | findstr /i "%id%" | findstr "cmd.exe"
if %errorlevel% == 1 start conhost "%~f0" & GOTO :EOF

:: ------------  Your code below ------------
