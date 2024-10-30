:: Created by AnakamaTheHedgehog

@echo off
color 3F
echo Please wait...
title My Program Launcher

:: Go into the file path and start via powershell

(NET FILE||(powershell start-process -FilePath '%0' -verb runas)&&(exit /B)) >NUL 2>&1
(NET FILE||(exit)) >NUL 2>&1

:: Show the menu to select the version

:Menu
cls
pushd %~dp0
set "choice=-"
echo.
echo ============================================================
echo  My Program Launcher
echo ============================================================
echo  [ 1 ] Version 1
echo  [ 2 ] Version 2
echo  [ 3 ] Version 3
echo  [ / ] Check for Updates
echo  [ - ] EXIT
echo.
set /p choice= Version: 
if %choice%==1 goto:ver1
if %choice%==2 goto:ver2
if %choice%==3 goto:ver3
:: Example: if %choice%==Key goto:
if %choice%==- goto:EXIT
if %choice%==/ goto:updates

:: Launch the program
:: You can add as many versions as you want

:ver1
cd data/ver1
start MyProgramV1.exe
exit


:ver2
cd data/ver2
start MyProgramV2.exe
exit

:ver3
cd data/ver3
start MyProgramV3.exe
exit

:Exit
