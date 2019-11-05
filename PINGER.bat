@echo OFF
color 04
title: TNXL Ping By HK
:prompt
set /P ip=IP:
if /I "%ip%"=="" goto :error
echo Ping Started...
echo CTRL+C to stop
goto :ping

:ping
echo Pinging %ip% ...
ping %ip% -t -w 1 -n 1| find "Reply" > NUL
if not errorlevel 1 (echo %ip% IS UP!!!) else (echo R.I.P %ip%)
goto :ping



:error
echo No IP Address Specified!
pause 
set /P choice=Do you want to ping again(y/n)?
if /I "%choice%"=="y" goto :prompt
if /I "%choice%"=="n" exit

