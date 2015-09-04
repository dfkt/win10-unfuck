@echo off

title Check and uninstall Windows Updates

:: change the following line to point to your browser of choice
set browser="C:\Program Files\Firefox Developer Edition\firefox.exe"

:scriptyes
set /p "kbnumber=Enter Windows Update number (without KB): "

%browser% "https://support.microsoft.com/en-us/kb/%kbnumber%"

choice /c yn /m "Do you want to uninstall this update"
if errorlevel 2 goto uninstallno
if errorlevel 1 goto uninstallyes

:uninstallyes
wusa /uninstall /kb:%kbnumber% /norestart /quiet

:uninstallno
choice /c yn /m "Do you want to run the script again"
cls
if errorlevel 2 goto scriptno
if errorlevel 1 goto scriptyes

:scriptno
exit
