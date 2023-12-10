@echo off
net session >nul 2>&1
if %errorLevel% NEQ 0 (
  :: Personalize as you want the error message
  echo Error^!
  echo This script needs to run as administrator.
  echo Press any key to exit and go back to Windows explorer, right click the bat file
  echo and click in 'Run as administrator'.

  pause >nul
  exit
)
:: ------------  Your code below ------------
