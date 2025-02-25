@echo off
::Source: https://github.com/JSimian/Bat-Things/
Title Fix AudioDG sound Glitches
net session >nul 2>&1
if %errorLevel% NEQ 0 (
  echo Error^!
  echo This script needs to run as administrator.
  echo Press any key to exit and go back to Windows explorer, 
  echo then right click the bat file, then click in 'Run as administrator'.
  pause >nul
  exit
)
ECHO Setting audiodg process affinity as single-core...
powershell $process = Get-Process audiodg ; $process.ProcessorAffinity = 4
ECHO Setting audiodg priority as high
powershell.exe -Command "Get-WmiObject Win32_Process -Filter 'Name=\"audiodg.exe\"' | ForEach-Object { $_.SetPriority(128) }"
exit
