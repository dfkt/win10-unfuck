@echo off

REM by https://twitter.com/EveningStarNM/status/628585117313691648

REM For Windows 10
REM Save this script as "DelSvcs.cmd"
REM Run it as an administrator from an elevated command prompt.
REM It deletes services that Microsoft uses to harvest some of your data.

net stop DiagTrack
net stop dmwappushservice
net stop Wecsvc
sc delete dmwappushservice
sc delete diagtrack
cd c:\ProgramData\Microsoft\Diagnosis\ETLLogs\Autologger
cacls Autologger-Diagtrack-Listener.etl /d SYSTEM

pause
