@echo off
Title Fix AudioDG sound Glitches
net session >nul 2>&1
if %errorLevel% NEQ 0 (
  echo Error^!
  echo This script needs to run as administrator.
  echo Press any key to exit and go back to Windows explorer, right click the bat file
  echo and click in 'Run as administrator'.
  pause >nul
  exit
)
ECHO Setting audiodg process affinity as single-core...
powershell $process = Get-Process audiodg ; $process.ProcessorAffinity = 8
ECHO Setting audiodg priority as high
wmic process where name="audiodg.exe" call setpriority 32768
exit
