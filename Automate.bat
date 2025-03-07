@echo off
setlocal

REM Define variables
set "regPath=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"
set "regKey=HideFastUserSwitching"

REM Check if the registry key exists
reg query "%regPath%" /v "%regKey%" >nul 2>&1

if %errorlevel%==0 (
    echo The registry key "%regKey%" exists.
) else (
    echo The registry key "%regKey%" does not exist. Creating the key...
    reg add "%regPath%" /v "%regKey%" /t REG_DWORD /d 1 /f
    echo The registry key "%regKey%" has been created with a value of 1.
)

endlocal
pause