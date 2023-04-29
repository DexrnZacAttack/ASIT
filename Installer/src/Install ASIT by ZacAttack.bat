@echo off
mkdir %temp%\ASIT\ >nul 2>&1
title ASIT by ZacAttack Setup
del %temp%\ASIT\ASIT-Version.txt /s /q
powershell -command "start-bitstransfer -source https://l.linklyhq.com/l/1O8ik -destination $ENV:Temp\ASIT\ASIT-Version.txt" >nul 2>&1
cls
for /f "tokens=2 delims=[" %%# in ('ver') do (
    for /f "tokens=2,3 delims=. " %%a in ("%%#") do set r_vers=%%a%%b
)
if %r_vers% LSS 10 (
color 4f
  echo You must run the ASIT Setup on Windows 10 or higher, as Windows 8.1 and lower do not support ASIT.
  pause
  exit /b 1
)
    net session >nul 2>&1
    if %errorLevel% == 0 (
        goto ASITI-Links
    ) else (
color 4f
        echo Failure: Administrator permissions not detected, This application needs administrator permissions to install ASIT.
pause
exit
    )






:ASITI-Links
cls
echo If none of the download links work, please press 3 to join my Discord to download the portable version of ASIT.
echo.
echo This is because the link shortener I use has a 1k link click limit
echo meaning if any of my links have been clicked 1k times
echo then it will deactivate the links and I will have to wait a little while until the links will be activated again.
echo.
echo If I ever find a way to get a new link shortener or resolve this issue some other way, these messages will be removed.
timeout /t 5 /nobreak > nul

:IorR
cls
if exist "C:\Program Files (x86)\ASIT\" (
set Install=Reinstall/Update
goto menu
) else (
set Install=Install
goto menu
)


:MENU
cls
echo Welcome to the ASIT by ZacAttack Setup
echo.
type %temp%\ASIT\ASIT-Version.txt
echo.
echo.
echo [1] %Install% ASIT by ZacAttack
echo [2] Uninstall ASIT by ZacAttack
echo [3] Join my Discord server
echo [4] Visit my YouTube Channel
echo [5] View version information
echo [6] About ASIT
echo [7] Exit to Command Prompt/Powershell
echo.
choice /c 1234567 /m "Choose your option"
if %ERRORLEVEL% EQU 1 goto I
if %ERRORLEVEL% EQU 2 goto U
if %ERRORLEVEL% EQU 3 goto DISCORD
if %ERRORLEVEL% EQU 4 goto YOUTUBE
if %ERRORLEVEL% EQU 5 goto CHANGELOG
if %ERRORLEVEL% EQU 6 goto ABOUTASIT
if %ERRORLEVEL% EQU 7 goto ASITEXIT

:DISCORD
start https://discord.gg/ysaGMquqek
goto IorR

:YOUTUBE
start https://www.youtube.com/channel/UCvwZf0QxcuYDwcfHZY0m5kQ?sub_confirmation=1
goto IorR

:CHANGELOG
cls
Powershell -command Start-BitsTransfer -source https://l.linklyhq.com/l/1O8dQ -destination $ENV:Temp\ASIT\ASIT-Changelog.txt >nul 2>&1
cls
type %temp%\ASIT\ASIT-Changelog.txt
pause
del %temp%\ASIT\ASIT-Changelog.txt
goto IorR

:ABOUTASIT
cls
echo ASIT by ZacAttack 
echo.
echo ASIT is a program that collects system information and displays them to you, as well as dumping that information into multiple text files.
echo.
echo You can view version information by pressing any key and then pressing 4.
echo.
echo More information is in my Discord Server which can be accessed by pressing any key and then pressing 3.
pause
Goto IorR


:ASITEXIT
cls
echo ASIT by ZacAttack Setup
echo.
echo [1] Exit to Command Prompt
echo [2] Exit to Powershell
echo [E] Back to menu
choice /c 12E /m "Choose your option"
if %ERRORLEVEL% EQU 1 goto EXITTOCMD
if %ERRORLEVEL% EQU 2 goto EXITTOPOWERSHELL
if %ERRORLEVEL% EQU E goto IorR
goto IorR








:EXITTOCMD
cd C:\Windows\System32
color 0f
title Command Prompt
cls
cmd

:EXITTOPOWERSHELL
cd C:\Windows\System32
color 0f
title Windows Powershell
cls
powershell








:U
color 4f
cls
echo Welcome to the ASIT by ZacAttack Setup
echo.
echo.
echo [Y] Uninstall
echo [N] Cancel
echo.
choice /c YN /m "Are you sure you would like to uninstall ASIT?"
if %ERRORLEVEL% EQU Y goto UC
if %ERRORLEVEL% EQU N goto IorR


:UC
cls
echo Uninstalling ASIT by ZacAttack...
echo.
rd "C:\Program Files (x86)\ASIT\" /s /q >nul 2>&1
del C:\Windows\System32\ASIT.bat /s /q
rd "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\ASIT" /s /q
cls
echo ASIT has been uninstalled. Please press any key to return to the menu.
pause
color 0f
goto IorR




:I
cls
if exist "C:\Program Files (x86)\ASIT\" (
echo Preparing to reinstall ASIT by ZacAttack...
rd "%userprofile%\Start Menu\Programs\ASIT\" /s /q
rd "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\ASIT" /s /q
rd "C:\Program Files (x86)\ASIT\" /s /q >nul 2>&1
del C:\Windows\System32\ASIT.bat /s /q >nul 2>&1
cls
echo Reinstalling ASIT by ZacAttack...
goto install
) else (
goto installreal
)
:installreal
echo Installing ASIT by ZacAttack...
:install
powershell -command del $ENV:Temp\ASIT\ -recurse -Force >nul 2>&1
powershell -command mkdir $ENV:Temp\ASIT >nul 2>&1
Powershell -command Start-BitsTransfer -source https://l.linklyhq.com/l/1O8cr -destination $ENV:Temp\ASIT\ASIT.zip >nul 2>&1
powershell -command "Expand-Archive $ENV:Temp\ASIT\ASIT.zip -DestinationPath 'C:\Program Files (x86)\ASIT\'" -Force >nul 2>&1
timeout /t 2 /nobreak > nul
powershell -command ren 'C:\Program Files (x86)\ASIT\ASIT by ZacAttack.exe' ASIT.exe >nul 2>&1
echo "C:\Program Files (x86)\ASIT\ASIT.exe" > C:\Windows\System32\ASIT.bat
powershell -command del $ENV:Temp\ASIT\ -recurse -Force >nul 2>&1
powershell -command "start-bitstransfer -source https://l.linklyhq.com/l/1VdJD -destination 'C:\Program Files (x86)\ASIT\ASITSetup.exe'
mkdir "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\ASIT\" >nul 2>&1


set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\ASIT\ASIT by ZacAttack.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "C:\Program Files (x86)\ASIT\ASIT.exe" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

cscript /nologo %SCRIPT%
del %SCRIPT%

set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\ASIT\Modify ASIT by ZacAttack.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "C:\Program Files (x86)\ASIT\ASITSetup.bat" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

cscript /nologo %SCRIPT%
del %SCRIPT%
cls
if exist "C:\Program Files (x86)\ASIT\ASIT.exe" (
goto probinstalled
) else (
    rd "C:\Program Files (x86)\ASIT" /s /q
   color 4f
echo An error occured and ASIT was not successfully installed, press any key to return to the menu.
pause
color 0f
goto IorR
)



:probinstalled
color a0
cls
echo ASIT was successfully installed! You can start ASIT by opening ASIT as Administrator located in the ASIT folder in the Start Menu. Press any key to return to the menu.
pause
color 0f
goto IorR
