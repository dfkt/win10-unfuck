@echo off

:: https://freedomhacker.net/latest-windows-7-8-81-update-spy-windows-10-4568/
:: http://www.sevenforums.com/general-discussion/367377-how-remove-windows-10-upgrade-updates-windows-7-8-a-30.html#post3127044

:: THESE UPDATES WILL BE REINSTALLED AFTER A REBOOT.
:: TO GET RID OF THEM FOR GOOD, DISABLE/HIDE THEM IN WINDOWS UPDATE AFTER UNINSTALL.

:: Compatibility update for upgrading Windows 7 
wusa /uninstall /kb:2952664 /norestart /quiet

:: Compatibility update for Windows 8.1 and Windows 8
wusa /uninstall /kb:2976978 /norestart /quiet

:: Update that enables you to upgrade from Windows 7 to a later version of Windows 
wusa /uninstall /kb:2990214 /norestart /quiet

:: Update to Windows 7 SP1 for performance improvements
wusa /uninstall /kb:3021917 /norestart /quiet

:: Update for customer experience and diagnostic telemetry
wusa /uninstall /kb:3022345 /norestart /quiet

:: Update installs Get Windows 10 app in Windows 8.1 and Windows 7 SP1 
wusa /uninstall /kb:3035583 /norestart /quiet

:: Update that enables you to upgrade from Windows 8.1 to Windows 10
wusa /uninstall /kb:3044374 /norestart /quiet

:: Update for customer experience and diagnostic telemetry
wusa /uninstall /kb:3068708 /norestart /quiet

:: Update that adds telemetry points to consent.exe in Windows 8.1 and Windows 7
wusa /uninstall /kb:3075249 /norestart /quiet

:: Update for customer experience and diagnostic telemetry
wusa /uninstall /kb:3080149 /norestart /quiet

exit
