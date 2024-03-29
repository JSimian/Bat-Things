@echo off
::Source: https://github.com/JSimian/Bat-Things/blob/main/Fix-AudioDG.bat

set id=%random%
title %id%
tasklist /v /fo csv | findstr /i "%id%" | findstr "cmd.exe"
if %errorlevel% == 1 start conhost "%~f0" & GOTO :EOF

:: ------------  Your code below ------------
