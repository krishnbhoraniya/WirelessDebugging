@REM This file is for connect your android phone wireless debugging
set /P ipAddress=Enter IP Address:
set /P port=Enter Port:

@REM following part is for pair device
cd %sdkPath%platform-tools
.\adb pair %ipAddress%:%port%

timeout /t 2

@REM following part is to connect device
set /P port2= Enter outer port:

.\adb connect %ipAddress%:%port2%

timeout /t 2