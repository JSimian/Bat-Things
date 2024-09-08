@echo off - 
This disable echo on the cmd enviroment

net session >nul 2>&1 - 
is a command to  Manages server computer connections, this lists all active connections
But to run propertly, this needs to run in an elevated command prompt, if this requeriment 
is not satified, the command return an exitlevel different of 0 else, this return 0.
I will use this return to determine if current command prompt is running with administrator
privilegies.

if %errorLevel% NEQ 0 -
if the return of the previous command is not 0 (or is not in an administrator elevated command prompt),
Return in screen the following message:

  echo Error^!
  echo This script needs to run as administrator.
  echo Press any key to exit and go back to Windows explorer, right click the bat file
  echo and click in 'Run as administrator'.

  pause >nul
  exit
  -pause to allow user to see the message and exit when any key is pressed
)

If the return is 0 (or is in an administrator elevated command prompt), the script continues running, put your script below this to run as administrator. 
