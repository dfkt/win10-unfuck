@echo off

REM original findings by https://twitter.com/thisisdey/status/628914599706914816

echo FUCK OFF FLASH
echo.
echo This will remove the baked-in Adobe Flash from Windows 10.
echo Run this script as admin.
echo.
pause

REM Only remove Flash Player as there are some people who use some other Adobe tools...

takeown /f "%windir%\System32\Macromed\Flash" /r /d y
icacls "%windir%\System32\Macromed\Flash" /grant administrators:F /t
rd /s /q "%windir%\System32\Macromed\Flash"
echo.

takeown /f "%windir%\SysWOW64\Macromed\Flash" /r /d y
icacls "%windir%\SysWOW64\Macromed\Flash" /grant administrators:F /t
rd /s /q "%windir%\SysWOW64\Macromed\Flash"
echo.

rd /s /q "%appdata%\Adobe\Flash Player"
rd /s /q "%appdata%\Macromedia\Flash Player"
echo.

pause
