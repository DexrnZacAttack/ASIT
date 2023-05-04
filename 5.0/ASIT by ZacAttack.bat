:BeginAsit

:: Environment Variables and other things
 title ASIT by ZacAttack
 @echo off
 set asitdate=Not Released
 set asitver=5.0 DEV
 set brandingver=ASIT by ZacAttack version
 set branding=ASIT by ZacAttack
 mkdir %temp%\ASIT\
 mkdir "C:\Program Files (x86)\ASIT\config\"
set ForceErrorExit=no
 cls

   :versionbypasscheck
    ren "C:\Program Files (x86)\ASIT\config\versionbypass.txt.txt" versionbypass.txt
    if exist "C:\Program Files (x86)\ASIT\config\versionbypass.txt" (
    goto Start
    ) else (
    goto versioncheck
    )

  goto errorcatch

:: checks windows version and gives an error if it is lower than 10, but allows for a bypass by creating a file.

 :versioncheck
 for /f "tokens=2 delims=[" %%# in ('ver') do (
     for /f "tokens=2,3 delims=. " %%a in ("%%#") do set r_vers=%%a%%b
 )

 echo %r_vers%

 if %r_vers% LSS 100 (
    cls
   color 4f
  echo %brandingver% %asitver% released on %asitdate% %versionbypass%
  echo ====================================================================
  echo.
set ErrorReason=You must run ASIT on Windows 10 or higher, as Windows 8.1 and lower do not support some of the commands that are used in this program, even with the latest Windows Management Framework installed, ASIT will not work properly. Please upgrade to Windows 10 or higher to use this software.
  echo.
  set MoreErrorInfo=If you would like to bypass this, please make a file titled "versionbypass.txt" in "C:\Program Files (x86)\ASIT\config\" and restart ASIT.
set ForceErrorExit=yes
set ErrorCode=OLDVERSION
goto ErrorCatch
  pause
  exit /b 1
 )




::sets date and time info and checks for admin.

:Start
 cls
 For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set thedate=%%c-%%a-%%b)
 For /f "tokens=1-2 delims=/: " %%a in ('time /t') do (set ttime=%%a-%%b)
 cls
 title ASIT by ZacAttack


 color 4f
  echo %brandingver% %asitver% released on %asitdate% %versionbypass%
  echo ====================================================================
  echo.
  set ErrorReason=Failure: Administrator permissions not detected, This application needs administrator permissions to query information like the TPM device and other devices on this computer.
set MoreErrorInfo=No extra error info provided.
set ForceErrorExit=yes
set ErrorCode=NOADMINISTRATORPRIVILAGES
goto ErrorCatch
  echo.
 pause
 exit















 ::main menu

:MenuSystem
 :Menu
 ::Checks for customization (which is a color code located in that text file and will type it and apply the color code.)

 :CustomizeCheck
   if exist %temp%\ASIT\ASITCustomization.txt (
      type %temp%\ASIT\ASITCustomization.txt|cmd
   goto versionbypasscheck
   ) else (
      goto versionbypasscheck
   )
   cls
     :versionbypasscheck
     echo.
 ren %temp%\ASIT\versionbypass.txt.txt versionbypass.txt
 if exist %temp%\ASIT\versionbypass.txt (
   set versionbypass=(Version Bypass Enabled^)
    goto menuaftercls
 ) else (
    goto menuaftercls
 )
 :menuaftercls
 cls
  echo Welcome to %brandingver% %asitver% released on %asitdate% %versionbypass%
  echo ====================================================================
  echo.
  echo [1] Start ASIT
  echo [2] Start ASIT (Dump Only Mode)
  echo [3] Open the ASIT folder
  echo [4] View your Windows Product Key
  echo [5] Settings
  echo [6] View my YouTube Channel
  echo [7] Join my Discord server
  echo [8] About ASIT
  echo [9] Exit to Command Prompt/Powershell
  echo.
  choice /c 123456789 /m "Choose your option"
  if %ERRORLEVEL% EQU 1 goto MIGRATECHECK
  if %ERRORLEVEL% EQU 2 goto ASITDO
  if %ERRORLEVEL% EQU 3 goto ASITFOLDER
  if %ERRORLEVEL% EQU 4 goto PRODUCTKEY
  if %ERRORLEVEL% EQU 5 goto settings
  if %ERRORLEVEL% EQU 6 goto YOUTUBE
  if %ERRORLEVEL% EQU 7 goto DISCORD
  if %ERRORLEVEL% EQU 8 goto ABOUTASIT
  if %ERRORLEVEL% EQU 9 goto ASITEXIT 




:: I often have issues with batch skipping entire blocks of code and doing its own thing, so i made this to prevent it from doing random stuff if that does happen.
:: just add "goto errorcatch" below many code blocks to allow it to catch an error.

:ERRORCATCH
echo %ErrorReason%
echo.
echo %ErrorCode%
echo.
echo ====================================================================
echo Above is the last line before the error occured and the error message.
echo.
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
echo.
    if %ForceErrorExit% == yes (
echo It seems ASIT has ran into an error.
echo.
pause
exit
    ) else (
echo It seems ASIT has ran into an error, this isnt fatal though.
echo.
echo Press any key to return to Menu.
echo.
pause
goto :BeginASIT
)














:exitui
  :ASITExit
    cls
echo Welcome to %brandingver% %asitver% released on %asitdate% %swarning% %versionbypass%
echo ====================================================================
    echo.
    echo [1] Exit to Command Prompt
    echo [2] Exit to Powershell
    echo [E] Back to menu
    echo.
    choice /c 12E /m "Choose your option"
    if %ERRORLEVEL% EQU 1 goto EXITTOCMD
    if %ERRORLEVEL% EQU 2 goto EXITTOPOWERSHELL
    if %ERRORLEVEL% EQU E goto MENU
    goto MENU


  goto errorcatch

   :ExitToCMD
     cls
     cd C:\Windows\System32
     color 0f
     title Command Prompt
     cls
     cd c:\windows\system32
     cmd

  goto errorcatch

   :ExitToPowerShell
     cls
     cd C:\Windows\System32
     color 0f
     title Windows Powershell
     cls
     cd C:\Windows\System32
     powershell

  goto errorcatch

:socials   
 :Discord
   cls
   start https://discord.gg/ysaGMquqek
   goto MENU

  goto errorcatch

 :YouTube
   cls
   start https://www.youtube.com/channel/UCvwZf0QxcuYDwcfHZY0m5kQ?sub_confirmation=1
   goto MENU

  goto errorcatch

:AboutASIT
  cls
  echo All software downloaded from this program (example: MSERT) is not owned by me.
  echo.
  echo Here are the owners of the software that is downloaded from this program
  echo MSERT - Microsoft
  echo.
echo %brandingver% %asitver% %versionbypass%
echo ==================================================================== by ZacAttack
  echo Released on %asitdate%
  echo.
  echo ASIT is a program that collects system information and displays them to you, as well as dumping that information into multiple text files.
  echo.
  echo More information is in my Discord Server which can be accessed by pressing any key and then pressing 7.
  echo.
  pause
  Goto MENU

  goto errorcatch

:DeleteUI
 :ASITDeleteQuestion
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo [Y] Yes
  echo [N] No
  echo.
  choice /c YN /m "Are you sure you want to delete the ASIT folder and all of it's contents?"
  if %ERRORLEVEL% EQU Y goto ASITDELETE
  if %ERRORLEVEL% EQU N goto MENU

  goto errorcatch

 :ASITDeleteCheck
  cls
  if exist %userprofile%\ZacAttack\ASIT (
  GOTO ASITDELETE
  ) else (
  echo The ASIT Folder was not found, Please check that you have ran ASIT at least once or go and manually delete the folder in "%userprofile%\ZacAttack\ASIT".
  pause
  goto MENU
  )

  goto errorcatch

 :ASITDelete
  rd %userprofile%\ZacAttack\ASIT\ /s /q
  rd %userprofile%\ASIT\ /s /q
  goto MENU

  goto errorcatch









































 













:SettingsUI
 :Settings
   REG QUERY "HKCU\SOFTWARE\ZacAttack\ASIT" /v SuppressWarning /f 1 /t REG_DWORD
   IF %errorlevel%==0 GOTO SettingsWS
   IF %errorlevel%==1 GOTO ASITSettings
  :ASITSettings
   cls
 echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
   echo.
   echo [1] Change the theme of ASIT
   echo [2] Delete the ASIT Folder
   echo [E] Return to menu
   echo.
   choice /c 123E /m "Choose your option"
   if %ERRORLEVEL% EQU 1 goto THEMESELECTION
   if %ERRORLEVEL% EQU 2 goto ASITDELETECHECK
   if %ERRORLEVEL% EQU E goto MENU
   goto MENU

  goto errorcatch










 :ThemeCustomization 
  :THEMESELECTION
   cls
 echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
   echo.
   echo [1] White text on a blue background
   echo [2] White text on a light blue background
   echo [3] White text on a purple background
   echo [4] White text on a green background
   echo [5] Red text on a black background
   echo [6] Black text on a green background
   echo [7] Black text on a gray background
   echo [8] White text on a red background
   echo.
   echo [9] Reset theme to white text on black background
   echo [E] Return to menu
   choice /c 123456789E /m "Choose your option"
   if %ERRORLEVEL% EQU 1 goto 1f
   if %ERRORLEVEL% EQU 2 goto 9f
   if %ERRORLEVEL% EQU 3 goto 57
   if %ERRORLEVEL% EQU 4 goto 27
   if %ERRORLEVEL% EQU 5 goto 0c
   if %ERRORLEVEL% EQU 6 goto 20
   if %ERRORLEVEL% EQU 7 goto 80
   if %ERRORLEVEL% EQU 8 goto 4f
   if %ERRORLEVEL% EQU 9 goto 0f
   if %ERRORLEVEL% EQU E goto MENU
   goto MENU

  goto errorcatch

  :: no im not adding errorcatching for all of these, worst that will happen is the theme will be wrong.

 :THEMES
  :0f
   echo color 0f > %temp%\ASIT\ASITCustomization.txt|type %temp%\ASIT\ASITCustomization.txt|cmd
   goto CUSTOMIZECHECK
  :1f
   echo color 1f > %temp%\ASIT\ASITCustomization.txt|type %temp%\ASIT\ASITCustomization.txt|cmd
   goto CUSTOMIZECHECK
  :9f
   echo color 9f > %temp%\ASIT\ASITCustomization.txt|type %temp%\ASIT\ASITCustomization.txt|cmd
   goto CUSTOMIZECHECK
  :57
   echo color 57 > %temp%\ASIT\ASITCustomization.txt|type %temp%\ASIT\ASITCustomization.txt|cmd
   goto CUSTOMIZECHECK
  :27
   echo color 27 > %temp%\ASIT\ASITCustomization.txt|type %temp%\ASIT\ASITCustomization.txt|cmd
   goto CUSTOMIZECHECK
  :0c
   echo color 0c > %temp%\ASIT\ASITCustomization.txt|type %temp%\ASIT\ASITCustomization.txt|cmd
   goto CUSTOMIZECHECK
  :20
   echo color 20 > %temp%\ASIT\ASITCustomization.txt|type %temp%\ASIT\ASITCustomization.txt|cmd
   goto CUSTOMIZECHECK
  :80
   echo color 80 > %temp%\ASIT\ASITCustomization.txt|type %temp%\ASIT\ASITCustomization.txt|cmd
   goto CUSTOMIZECHECK
  :4f
   echo color 4f > %temp%\ASIT\ASITCustomization.txt|type %temp%\ASIT\ASITCustomization.txt|cmd
   goto CUSTOMIZECHECK

  goto errorcatch





















:PKInfo
 :ProductKey
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  wmic path SoftwareLicensingService get OA3xOriginalProductKey
  echo.
  echo If there is no product key and it just says "OA3xOriginalProductKey" than your product key could not be found or it is linked to a digital license connected to your Microsoft Account.
  pause
  GOTO MENU

    goto errorcatch




































:ExtraStuff
 :ASITFolder
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  if exist %userprofile%\ZacAttack\ASIT (
     start %userprofile%\ZacAttack\ASIT
  goto MENU
  ) else (
     echo The ASIT folder was not found, please run ASIT or ASIT Dump Only mode.
  pause
  goto MENU
  )

    goto errorcatch


















:BackupAndMigration
 :SkipBackup
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  md "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\" 
  cls
  powershell mkdir "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%"
  cls
  GOTO MainInfo


  goto errorcatch





















 :MigrateCheck
  if exist %userprofile%\ASIT (
     goto MIGRATE
  ) else (
  GOTO ASITBackupCheck
  )

  goto errorcatch

 :Migrate
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for dump files from older versions of ASIT and moving them to the new ASIT folder.
  md "%userprofile%\ZacAttack\ASIT\" 
  powershell -command mkdir "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%"
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for dump files from older versions of ASIT and moving them to the new ASIT folder
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for dump files from older versions of ASIT and moving them to the new ASIT folder
  powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for dump files from older versions of ASIT and moving them to the new ASIT folder
  powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for dump files from older versions of ASIT and moving them to the new ASIT folder
  powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for dump files from older versions of ASIT and moving them to the new ASIT folder
  powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\CPU.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for dump files from older versions of ASIT and moving them to the new ASIT folder
  powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for dump files from older versions of ASIT and moving them to the new ASIT folder
  powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for dump files from older versions of ASIT and moving them to the new ASIT folder
  powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for dump files from older versions of ASIT and moving them to the new ASIT folder
  powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for dump files from older versions of ASIT and moving them to the new ASIT folder
  powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\GPU.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for dump files from older versions of ASIT and moving them to the new ASIT folder
  powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Ram.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for dump files from older versions of ASIT and moving them to the new ASIT folder
  powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Information.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for dump files from older versions of ASIT and moving them to the new ASIT folder
  powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for dump files from older versions of ASIT and moving them to the new ASIT folder
  powershell xcopy /Y %userprofile%\ASIT\Computer-Info\Components\TPM.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for dump files from older versions of ASIT and moving them to the new ASIT folder
  powershell xcopy /Y %userprofile%\ASIT\Computer-Info\Components\Secure-Boot.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for dump files from older versions of ASIT and moving them to the new ASIT folder
  del %userprofile%\ASIT\ /q
  cls
  powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'ASIT by ZacAttack', 'Loading 50% Complete!', [System.Windows.Forms.ToolTipIcon]::None)}"
  cls






















































 :ASITBackupCheck
  cls
  echo A System Information Tool (ASIT) by ZacAttack Version %asitver%
  timeout /t 3 /nobreak > nul
  cls
  if exist %userprofile%\ZacAttack\ASIT (
     goto BACKUP
  ) else (
  GOTO SKIPBACKUP
  )
 :Backup
  cls
 :: this creates the computer-info directory and some directories inside, then scans for any earlier files from earlier scans and backs them up.
 :: yes i know it looks liike shit
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 0%
  
  md "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\" 
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 0%
  powershell mkdir "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%"
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 0%
   if exist %userprofile%\ZacAttack\ASIT\Components\Drive-Info.txt (
    powershell xcopy  /Y %userprofile%\ZacAttack\ASIT\Components\Drive-Info.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
    goto next1
  ) else (
  GOTO next1
  )
 :next1
  cls
  echo Looking for earlier dump files and adding the date to them. 5%
     if exist %userprofile%\ZacAttack\ASIT\UserInfo.txt (
    powershell xcopy  /Y %userprofile%\ZacAttack\ASIT\UserInfo.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
    goto next2
  ) else (
  GOTO next2
  )
  :next2
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 10%
      if exist %userprofile%\ZacAttack\ASIT\Components\Ram-Serial-Number.txt (
    powershell xcopy  /Y %userprofile%\ZacAttack\ASIT\Components\Ram-Serial-Number.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
    goto next3
  ) else (
  GOTO next3
  )
  cls
 :next3
 cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 15%
        if exist %userprofile%\ZacAttack\ASIT\Components\PNP-Info.txt (
   powershell xcopy  /Y %userprofile%\ZacAttack\ASIT\Components\PNP-Info.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
   goto next4
  ) else (
  GOTO next4
  )
  :next4
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 20%
        if exist %userprofile%\ZacAttack\ASIT\Components\CPU.txt (
     powershell xcopy  /Y %userprofile%\ZacAttack\ASIT\Components\CPU.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
     goto next5
  ) else (
  GOTO next5
  )
:next5
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 25%
        if exist %userprofile%\ZacAttack\ASIT\Components\Motherboard-PCI-Information.txt (
  powershell xcopy  /Y %userprofile%\ZacAttack\ASIT\Components\Motherboard-PCI-Information.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime% 
  goto next6
  ) else (
  GOTO next6
  )
 :next6
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 30%
        if exist %userprofile%\ZacAttack\ASIT\Components\Motherboard-Information.txt (
  powershell xcopy  /Y %userprofile%\ZacAttack\ASIT\Components\Motherboard-Information.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
  goto next7
  ) else (
  GOTO next7
  )
:next7
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 35%
        if exist %userprofile%\ZacAttack\ASIT\Components\GPU-Simplified.txt (
  powershell xcopy  /Y %userprofile%\ZacAttack\ASIT\Components\GPU-Simplified.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
  goto next8
  ) else (
  GOTO next8
  )
  :next8
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 40%
        if exist %userprofile%\ZacAttack\ASIT\Install-and-Last-Boot-Date.txt (
  powershell xcopy  /Y %userprofile%\ZacAttack\ASIT\Install-and-Last-Boot-Date.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
  goto next9
  ) else (
  GOTO next9
  )
  :next9
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 45%
        if exist %userprofile%\ZacAttack\ASIT\Components\GPU.txt (
   powershell xcopy  /Y %userprofile%\ZacAttack\ASIT\Components\GPU.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime% 
   goto next10
  ) else (
  GOTO next10
  )
  :next10
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 50%
        if exist %userprofile%\ZacAttack\ASIT\Components\Ram.txt (
powershell xcopy  /Y %userprofile%\ZacAttack\ASIT\Components\Ram.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
goto next11
  ) else (
  GOTO next11
  )
  :next11
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 55%
        if exist %userprofile%\ZacAttack\ASIT\Information.txt (
    powershell xcopy  /Y %userprofile%\ZacAttack\ASIT\Information.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
    goto next12
  ) else (
  GOTO next12
  )
  :next12
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 60%
        if exist %userprofile%\ZacAttack\ASIT\Components\Audio-Devices.txt (
   powershell xcopy  /Y %userprofile%\ZacAttack\ASIT\Components\Audio-Devices.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
   goto next13
  ) else (
  GOTO next13
  )
:next13
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 65%
        if exist %userprofile%\ZacAttack\ASIT\Components\TPM.txt (
    powershell xcopy /Y %userprofile%\ZacAttack\ASIT\Components\TPM.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
    goto next14
  ) else (
  GOTO next14
  )
 :next14
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 70%
        if exist %userprofile%\ZacAttack\ASIT\Secure-Boot.txt (
  powershell xcopy /Y %userprofile%\ZacAttack\ASIT\Secure-Boot.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
  goto next15
  ) else (
  GOTO next15
  )
  :next15
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 75%
        if exist %userprofile%\ZacAttack\ASIT\MSERTResults.txt (
   powershell xcopy /Y %userprofile%\ZacAttack\ASIT\MSERTResults.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
   goto next16
  ) else (
  GOTO next16
  )
 :next16
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 80%
        if exist %userprofile%\ZacAttack\ASIT\BitLockerInfo.txt (
powershell xcopy /Y %userprofile%\ZacAttack\ASIT\BitLockerInfo.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
goto next17
  ) else (
  GOTO next17
  )
  :next17
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 85%
        if exist %userprofile%\ZacAttack\ASIT\SMART-Info.txt (
   powershell xcopy /Y %userprofile%\ZacAttack\ASIT\SMART-Info.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
   goto next18
  ) else (
  GOTO next18
  )
 :next18
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  cls
  echo.
  echo Looking for earlier dump files and adding the date to them. 90%
        if exist %userprofile%\ZacAttack\ASIT\OptionalFeatures.txt (
    powershell xcopy /Y %userprofile%\ZacAttack\ASIT\OptionalFeatures.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
    goto next19
  ) else (
  GOTO next19
  )
  :next19
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 91%
  del %userprofile%\ZacAttack\ASIT\Information.txt /q
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 91%
  del %userprofile%\ZacAttack\ASIT\Secure-Boot.txt /q
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 92%
  del %userprofile%\ZacAttack\ASIT\Install-and-Last-Boot-Date.txt /q
  cls
  echo Looking for earlier dump files and adding the date to them. 92%
  del %userprofile%\ZacAttack\ASIT\UserInfo.txt /q
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 93%
  del %userprofile%\ZacAttack\ASIT\Components\GPU.txt /q 
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 93%
  del %userprofile%\ZacAttack\ASIT\Components\TPM.txt /q 
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 94%
  del %userprofile%\ZacAttack\ASIT\Components\CPU.txt /q 
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 94%
  del %userprofile%\ZacAttack\ASIT\Components\Ram.txt /q 
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 95%
  del %userprofile%\ZacAttack\ASIT\Components\Motherboard-Information.txt /q 
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 95%
  del %userprofile%\ZacAttack\ASIT\Components\PNP-Info.txt /q 
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 96%
  del %userprofile%\ZacAttack\ASIT\Components\Motherboard-PCI-Information.txt /q 
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 96%
  del %userprofile%\ZacAttack\ASIT\Components\Drive-Info.txt /q 
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 97%
  del %userprofile%\ZacAttack\ASIT\Components\GPU-Simplified.txt /q 
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 97%
  del %userprofile%\ZacAttack\ASIT\Components\Ram-Serial-Number.txt /q 
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 98%
  del %userprofile%\ZacAttack\ASIT\Components\Audio-Devices.txt /q
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 98%
  del %userprofile%\ZacAttack\ASIT\Product-Key.txt /q
  cls
  echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 99%
  del %userprofile%\ZacAttack\ASIT\MSERTResults.txt /q
  cls
  echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 99%
  del %userprofile%\ZacAttack\ASIT\Components\SMART-Info.txt /q
  cls
  echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 100%
  del %userprofile%\ZacAttack\ASIT\Components\BitLockerInfo.txt /q
  cls
  echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Looking for earlier dump files and adding the date to them. 100%
  del %userprofile%\ZacAttack\ASIT\OptionalFeatures.txt /QUERY
  cls
  powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'ASIT by ZacAttack', 'Loading Complete!', [System.Windows.Forms.ToolTipIcon]::None)}"
  cls










































:ASIT
 :MainInfo
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Getting information... 
  echo.
  powershell -command "Get-ComputerInfo | format-table OsArchitecture,BiosFirmwareType,PowerPlatformRole | Out-File -Encoding ascii -FilePath %userprofile%\ZacAttack\ASIT\Information.txt"
  powershell -command "get-ciminstance Win32_OperatingSystem | Format-Table BuildNumber,Version,SystemDirectory | Out-File -Encoding ascii -append -FilePath %userprofile%\ZacAttack\ASIT\Information.txt"
  systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"Original Install Date" >> "%userprofile%\ZacAttack\ASIT\Information.txt"
  echo OS Architecture is: %os% >> "%userprofile%\ZacAttack\ASIT\Information.txt"
  echo Windows is installed on drive %homedrive% >> "%userprofile%\ZacAttack\ASIT\Information.txt"
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  type "%userprofile%\ZacAttack\ASIT\Information.txt"
  echo.
  echo That is some general information about your computer. If the "BiosFirmwareType" says UEFI, and "OsArchitecture" says x64 or ARM, then your computer looks to be configured correctly for Windows 11.
  echo.
  echo You can scroll up and down to look at the information.
  echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\Information.txt
  pause
  cls










 :UserInfo
  powershell.exe -command "Get-LocalUser | Out-File -Encoding ascii -FilePath %userprofile%\ZacAttack\ASIT\UserInfo.txt"
  echo Your user folder is located at: %userprofile% >> "%userprofile%\ZacAttack\ASIT\UserInfo.txt"
  echo You are logged in as %username% >> "%userprofile%\ZacAttack\ASIT\UserInfo.txt"
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  type "%userprofile%\ZacAttack\ASIT\UserInfo.txt"
  echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\UserInfo.txt
  pause


















 :InstallAndBootDateInfo
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Getting Install and Last Boot Date...
  powershell -command "(Get-CimInstance Win32_OperatingSystem).InstallDate | Out-File -Encoding ascii -FilePath %userprofile%\ZacAttack\ASIT\Install-and-Last-Boot-Date.txt"
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Getting Install and Last Boot Date...
  powershell -command "Get-CimInstance -ClassName Win32_OperatingSystem | select LastBootUpTime | Out-File -Encoding ascii -append -FilePath %userprofile%\ZacAttack\ASIT\Install-and-Last-Boot-Date.txt"
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  type %userprofile%\ZacAttack\ASIT\Install-and-Last-Boot-Date.txt
  echo The top date is when Windows was installed, the bottom date is the time when you last turned on your computer.
  echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\Install-and-Last-Boot-Date.txt
  pause
  cls











































 :DiskInfo
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Getting drive and partition information...
  powershell -command "Get-Volume | Out-File -Encoding ascii -FilePath %userprofile%\ZacAttack\ASIT\Components\Drive-Info.txt" 
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  type %userprofile%\ZacAttack\ASIT\Components\Drive-Info.txt
  echo.
  echo That is information about the drives you have plugged in, their partitions, and how much disk space they have left, you can scroll up and down to look at the information.
  echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\Components\Drive-Info.txt
  pause
  cls








 :SmartInfo
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Getting S.M.A.R.T Information...
  powershell -command "wmic diskdrive get status',' size',' model | Out-File -Encoding ascii -FilePath %userprofile%\ZacAttack\ASIT\Components\SMART-Info.txt"
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  type %userprofile%\ZacAttack\ASIT\Components\SMART-Info.txt
  echo.
  echo That is the S.M.A.R.T information about the disks in your computer.
  echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\Components\SMART-Info.txt
  pause
  cls














 :BitLockerInfo
  cls
echo %brandingver% %asitver% %versionbypass%
echo ==================================================================== 
  echo.
  echo Getting BitLocker information...
  powershell -command "manage-bde -status | Out-File -Encoding ascii -FilePath %userprofile%\ZacAttack\ASIT\BitLockerInfo.txt
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  type %userprofile%\ZacAttack\ASIT\BitLockerInfo.txt
  echo.
  echo This is information about BitLocker, if Encryption Method is "None". that means that BitLocker is not enabled on your device.
  echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\BitLockerInfo.txt
  pause
  cls










 
 :USBInfo
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Getting PNP Info...
  powershell -command "Get-PnpDevice -PresentOnly | Where-Object { $_.InstanceId -match '^USB' } | Out-File  -Encoding ascii -FilePath %userprofile%\ZacAttack\ASIT\Components\PNP-Info.txt"
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  type %userprofile%\ZacAttack\ASIT\Components\PNP-Info.txt
  echo.
  echo These are the current detected PNP Devices, you can scroll up and down to look at the information.
  echo.
  echo PNP devices are devices that are plugged in or built into the computer, like a Keyboard and Mouse, or a camera.
  echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\Components\PNP-Info.txt
  pause
  cls









 :MBInfo
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Getting Motherboard Information...
  powershell -command "Systeminfo | findstr /b /c:'System Manufacturer' | Out-File  -Encoding ascii -FilePath %userprofile%\ZacAttack\ASIT\Components\Motherboard-Information.txt"
  powershell -command "Systeminfo | findstr /b /c:'System Model' | Out-File  -Encoding ascii -append -FilePath %userprofile%\ZacAttack\ASIT\Components\Motherboard-Information.txt"
  powershell -command "Systeminfo | findstr /b /c:'System Type' | Out-File  -Encoding ascii -append -FilePath %userprofile%\ZacAttack\ASIT\Components\Motherboard-Information.txt"
  powershell -command "Systeminfo | findstr /b /c:'Processor(s)' | Out-File  -Encoding ascii -append -FilePath %userprofile%\ZacAttack\ASIT\Components\Motherboard-Information.txt"
  powershell -command "Systeminfo | findstr /b /c:'BIOS Version' | Out-File  -Encoding ascii -append -FilePath %userprofile%\ZacAttack\ASIT\Components\Motherboard-Information.txt"
  powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'ASIT by ZacAttack', 'Finished Loading Motherboard Information!', [System.Windows.Forms.ToolTipIcon]::None)}"
  cls
echo %brandingver% %asitver% %versionbypass%
echo ==================================================================== 
  echo.
  type %userprofile%\ZacAttack\ASIT\Components\Motherboard-Information.txt
  echo.
  echo System Manufacturer is the company that made your motherboard/system.
  echo System Model is the model name/number of your motherboard/system.
  echo System Type is what type of processor is in your computer. (e.g ARM, x64.)
  echo Processor(s) is the amount of processors that are in your computer. Some motherboards allow you to add 2 or more processors into the motherboard.
  echo BIOS Version is the version of your BIOS, depending on what the manufacturer of your motherboard is, this may vary.
  echo.
  echo If any of them say "To Be Filled By O.E.M." that means that the manufacturer/system builder has not put any information in that field in the BIOS, or Windows cannot seem to find any information on that field.
  echo.
  echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\Components\Motherboard-Information.txt
  pause
  cls




















 :GPUInfo
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Getting GPU information...
  powershell -command "Get-CimInstance CIM_VideoController | Format-Table Name,DeviceID,PNPDeviceID,DriverDate,DriverVersion,InfFilename | Out-File -Encoding ascii -FilePath %userprofile%\ZacAttack\ASIT\Components\GPU-Simplified.txt"
  powershell -command "Get-CimInstance CIM_VideoController | Out-File -Encoding ascii -FilePath %userprofile%\ZacAttack\ASIT\Components\GPU.txt"
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  type "%userprofile%\ZacAttack\ASIT\Components\GPU.txt
  echo Advanced GPU Information ?
  echo ===============================
  echo GPU Simplified Information ?
  type "%userprofile%\ZacAttack\ASIT\Components\GPU-Simplified.txt"
  echo That is your GPU and it's information, there is more information if you scroll up.
  echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\Components\GPU.txt
  echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\Components\GPU-Simplified.txt
  pause
  cls
































 :CPUInfo
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Getting CPU information...
  powershell -command "Get-CimInstance -Class CIM_Processor -ErrorAction Stop | Out-File -Encoding ascii -FilePath %userprofile%\ZacAttack\ASIT\Components\CPU.txt"
  echo Architecture: %processor_architecture% >> "%userprofile%\ZacAttack\ASIT\Components\CPU.txt"
  echo Number of logical processors: %number_of_processors% >> "%userprofile%\ZacAttack\ASIT\Components\CPU.txt"
  echo Identifier: %processor_identifier% >> "%userprofile%\ZacAttack\ASIT\Components\CPU.txt"
  echo Revision: %processor_revision% >> "%userprofile%\ZacAttack\ASIT\Components\CPU.txt"
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  type %userprofile%\ZacAttack\ASIT\Components\CPU.txt
  echo.
  echo That is your CPU and it's information.
  echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\Components\CPU.txt
  pause
  cls





























 :RAMInfo 
  rem ram information check
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Getting Ram information...
  powershell -command "Get-CimInstance win32_physicalmemory | Format-Table Manufacturer,Banklabel,Configuredclockspeed,Devicelocator -autosize | Out-File -encoding ascii -FilePath %userprofile%\ZacAttack\ASIT\Components\Ram.txt" < nul
  systeminfo | findstr /B /C:"Total Physical Memory" >> %userprofile%\ZacAttack\ASIT\Components\Ram.txt < nul
  powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'ASIT by ZacAttack', 'Finished Loading RAM Information!', [System.Windows.Forms.ToolTipIcon]::None)}"
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  type %userprofile%\ZacAttack\ASIT\Components\Ram.txt
  echo.
  echo That is your Ram and it's information.
  echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\Components\Ram.txt
  pause
  cls































 :PCIInfo
  rem pci check
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Getting information about the PCI slots on the motherboard...
  powershell -command "Get-WmiObject -class "Win32_SystemSlot" | Out-file -Encoding ascii -FilePath %userprofile%\ZacAttack\ASIT\Components\Motherboard-PCI-Information.txt"
  powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'ASIT by ZacAttack', 'Finished Loading PCI Information!', [System.Windows.Forms.ToolTipIcon]::None)}"
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  type %userprofile%\ZacAttack\ASIT\Components\Motherboard-PCI-Information.txt
  echo.
  echo That is your Motherboard's PCI Slots and its information, you can scroll up and down to look at the information.
  echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\Components\Motherboard-PCI-Information.txt
  pause
  cls




















 :AudioInfo
  rem audio information
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Getting audio device information...
  powershell -command "Get-CimInstance win32_sounddevice | Out-File -Encoding ascii -FilePath %userprofile%\ZacAttack\ASIT\Components\Audio-Devices.txt
  powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'ASIT by ZacAttack', 'Finished Loading Audio Device Information!', [System.Windows.Forms.ToolTipIcon]::None)}"
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  type %userprofile%\ZacAttack\ASIT\Components\Audio-Devices.txt
  echo.
  echo These are the sound devices that are installed in your computer, you can scroll up and down to look at the information.
  echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\Components\Audio-Devices.txt
  pause
  cls

























 :TPMInfo
  rem TPM information
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Getting TPM Device information...
  powershell -command "Get-Tpm | Format-Table TPMPresent,TpmReady,TpmEnabled | Out-File -Encoding ascii -FilePath %userprofile%\ZacAttack\ASIT\Components\TPM.txt"
  powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'ASIT by ZacAttack', 'Finished Loading TPM Information!', [System.Windows.Forms.ToolTipIcon]::None)}"
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  type %userprofile%\ZacAttack\ASIT\Components\TPM.txt
  echo.
  echo This is information about the TPM device installed in your computer, if everything is true, that means TPM is enabled and you might be able to upgrade to Windows 11 if all of the other system requirements are met.
  echo.
  echo TPM may be required to install Windows 11, but not to use it.
  echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\Components\TPM.txt
  pause
  cls





















 :SBInfo
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Getting Secure Boot information...
  powershell -command "Confirm-SecureBootUEFI | Out-File -encoding ascii -filepath %userprofile%\ZacAttack\ASIT\Secure-Boot.txt"
  powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'ASIT by ZacAttack', 'Finished Loading Secure Boot Information!', [System.Windows.Forms.ToolTipIcon]::None)}"
  cls 
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  type %userprofile%\ZacAttack\ASIT\Secure-Boot.txt
  echo.
  echo This is information about Secure Boot, if it says False, than it is not enabled, if it says True, than it is enabled, if it says nothing or shows an error, than Secure Boot may not be supported on your motherboard.
  echo.
  echo Secure Boot may be required to install Windows 11, but not to use it.
  echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\Secure-Boot.txt
  pause
  cls


 :optionalfeatures
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo Getting OptionalFeatures information...
  powershell -command "Get-WindowsOptionalFeature -Online | format-table FeatureName,State | Out-File -encoding ascii -filepath %userprofile%\ZacAttack\ASIT\OptionalFeatures.txt"
  powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'ASIT by ZacAttack', 'Finished Loading Secure Boot Information!', [System.Windows.Forms.ToolTipIcon]::None)}"
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  type %userprofile%\ZacAttack\ASIT\OptionalFeatures.txt
  echo.
  echo This is information about Optional Features, if the messages by the Feature Names say "Enabled" then that feature is enabled, if it says "Disable" then that feature is disabled.
  echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\OptionalFeatures.txt
  pause
  cls

 :MSERTUI
  :msert
   cls
 echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
   echo.
   echo Do you want to run a MSERT (Microsoft Security Scanner) scan?
   echo.
   echo [1] Yes
   echo [2] No
   echo [3] What is MSERT?
   echo.
   choice /c 123 /m "Run MSERT?"
   if %ERRORLEVEL% EQU 1 goto msertscan
   if %ERRORLEVEL% EQU 2 goto msertNO
   if %ERRORLEVEL% EQU 3 start https://docs.microsoft.com/en-us/microsoft-365/security/intelligence/safety-scanner-download?view=o365-worldwide
   goto msert


  :msertscan
   mkdir %temp%\ASIT\Downloaded\
   cls
 echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
   echo.
   echo Downloading MSERT...
   echo.
   echo.
   Powershell -command "Start-BitsTransfer -source https://l.linklyhq.com/l/1O8iI -destination $ENV:Temp\ASIT\Downloaded\MSERT.exe" >nul 2>&1
   cls
 echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
   echo.
   echo This may take a while depending on what scan you chose...
   %temp%\ASIT\Downloaded\MSERT.exe
   goto MSERTresults


  :MSERTresults
   del %temp%\ASIT\Downloaded\MSERT.exe
   del %userprofile%\ZacAttack\ASIT\MSERTResults.txt /s /q
   del %temp%\ASIT\Downloaded\ /s /q
   copy C:\Windows\debug\msert.log %userprofile%\ZacAttack\ASIT\MSERTResults.txt
   cls
 echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
   echo.
   type %userprofile%\ZacAttack\ASIT\MSERTResults.txt
   echo.
   echo These are the results of the MSERT scan, you can scroll up and down to look at all of the information. The bottom one is the newest scan, with the ones above being older scans.
   pause




  :msertNO
   cls


 :ASITEnd
  cls
echo %brandingver% %asitver% %versionbypass%
echo ====================================================================
  echo.
  echo All information has been dumped in %userprofile%\ZacAttack\ASIT\, press any key to return to the menu.
  pause
  goto MENU
  exit





























:ASITDUMPONLY



 :DOSKIPBACKUP
  echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
  echo.
  md "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\" 
  cls
  powershell mkdir "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%"
  cls
  GOTO DOMainInfo


  goto errorcatch


 :domigratecheck
  if exist %userprofile%\ASIT (
     goto DOMIGRATE
  ) else (
  GOTO DOBACKUP
  )

  goto errorcatch

 :DOMIGRATE
  cls
  md "%userprofile%\ZacAttack\ASIT\" 
  powershell -command mkdir "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%"
  powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%
  powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%
  powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%
  powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\CPU.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%
  powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%
  powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%
  powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%
  powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%
  powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\GPU.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%
  powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Ram.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%
  powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Information.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%
  powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%
  powershell xcopy /Y %userprofile%\ASIT\Computer-Info\Components\TPM.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%
  powershell xcopy /Y %userprofile%\ASIT\Computer-Info\Components\Secure-Boot.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\ASIT-OLD%thedate%-%ttime%
  del %userprofile%\ASIT\ /q
  cls
  goto ASITDO


  goto errorcatch

:logonanim
 cls
 start C:\Windows\System32\oobe\FirstLogonAnim.exe /RunFirstLogonAnim /existinguser
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass% 
 echo.
 echo Loading Animation...
 timeout /t 12 /nobreak >nul
 goto afterlogonanim


  goto errorcatch


:ASITDO
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass% 
 echo.
 echo Would you like to watch a short animation while you wait? (experimental)
 echo.
 echo [Y] Yes
 echo [N] No
 echo.
 choice /c YN /m "Would you like to watch a short animation?"
 if %ERRORLEVEL% EQU 1 goto logonanim
 if %ERRORLEVEL% EQU 2 goto afterlogonanim

  goto errorcatch

 :afterlogonanim
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass% 
 echo.
 if exist %userprofile%\ASIT (
    goto DOBACKUP
 ) else (
 GOTO DOSKIPBACKUP
 )

  goto errorcatch

:DOBACKUP
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 md "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\" 
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 powershell mkdir "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%"
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 powershell xcopy  /Y %userprofile%\ZacAttack\ASIT\Components\Drive-Info.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 powershell xcopy  /Y %userprofile%\ZacAttack\ASIT\Components\Ram-Serial-Number.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 powershell xcopy  /Y %userprofile%\ZacAttack\ASIT\Components\PNP-Info.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 powershell xcopy  /Y %userprofile%\ZacAttack\ASIT\Components\CPU.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 powershell xcopy  /Y %userprofile%\ZacAttack\ASIT\Components\Motherboard-PCI-Information.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 powershell xcopy  /Y %userprofile%\ZacAttack\ASIT\Components\Motherboard-Information.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 powershell xcopy  /Y %userprofile%\ZacAttack\ASIT\Components\GPU-Simplified.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 powershell xcopy  /Y %userprofile%\ZacAttack\ASIT\Install-and-Last-Boot-Date.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 powershell xcopy  /Y %userprofile%\ZacAttack\ASIT\Components\GPU.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 powershell xcopy  /Y %userprofile%\ZacAttack\ASIT\Components\Ram.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 powershell xcopy  /Y %userprofile%\ZacAttack\ASIT\Information.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 powershell xcopy  /Y %userprofile%\ZacAttack\ASIT\Components\Audio-Devices.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 powershell xcopy /Y %userprofile%\ZacAttack\ASIT\Components\TPM.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 powershell xcopy /Y %userprofile%\ZacAttack\ASIT\Secure-Boot.txt "%userprofile%\ZacAttack\ASIT\Components\Previous-Dumps\%thedate%-%ttime%
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 del %userprofile%\ZacAttack\ASIT\Information.txt /q
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 del %userprofile%\ZacAttack\ASIT\Secure-Boot.txt /q
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass% 
 del %userprofile%\ZacAttack\ASIT\Install-and-Last-Boot-Date.txt /q
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 del %userprofile%\ZacAttack\ASIT\Components\GPU.txt /q 
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 del %userprofile%\ZacAttack\ASIT\Components\TPM.txt /q 
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 del %userprofile%\ZacAttack\ASIT\Components\CPU.txt /q 
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 del %userprofile%\ZacAttack\ASIT\Components\Ram.txt /q 
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 del %userprofile%\ZacAttack\ASIT\Components\Motherboard-Information.txt /q 
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 del %userprofile%\ZacAttack\ASIT\Components\PNP-Info.txt /q 
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 del %userprofile%\ZacAttack\ASIT\Components\Motherboard-PCI-Information.txt /q 
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 del %userprofile%\ZacAttack\ASIT\Components\Drive-Info.txt /q 
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 del %userprofile%\ZacAttack\ASIT\Components\GPU-Simplified.txt /q 
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 del %userprofile%\ZacAttack\ASIT\Components\Ram-Serial-Number.txt /q 
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 del %userprofile%\ZacAttack\ASIT\Components\Audio-Devices.txt /q
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 del %userprofile%\ZacAttack\ASIT\Product-Key.txt /q
 cls
:DOMainInfo
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass% 
 echo.
 powershell -command "Systeminfo | findstr /b /c:'System Manufacturer' | Out-File  -Encoding ascii -FilePath %userprofile%\ZacAttack\ASIT\Components\Motherboard-Information.txt" <nul
 powershell -command "Systeminfo | findstr /b /c:'System Model' | Out-File  -Encoding ascii -append -FilePath %userprofile%\ZacAttack\ASIT\Components\Motherboard-Information.txt" <nul
 powershell -command "Systeminfo | findstr /b /c:'System Type' | Out-File  -Encoding ascii -append -FilePath %userprofile%\ZacAttack\ASIT\Components\Motherboard-Information.txt" <nul
 powershell -command "Systeminfo | findstr /b /c:'Processor(s)' | Out-File  -Encoding ascii -append -FilePath %userprofile%\ZacAttack\ASIT\Components\Motherboard-Information.txt" <nul
 powershell -command "Systeminfo | findstr /b /c:'BIOS Version' | Out-File  -Encoding ascii -append -FilePath %userprofile%\ZacAttack\ASIT\Components\Motherboard-Information.txt" <nul
 powershell -command "Get-ComputerInfo | format-table OsArchitecture,BiosFirmwareType,PowerPlatformRole | Out-File -Encoding utf8 -FilePath %userprofile%\ZacAttack\ASIT\Information.txt | Out-Null"
 powershell -command "Get-LocalUser | Out-File -Encoding ascii -FilePath %userprofile%\ZacAttack\ASIT\UserInfo.txt"
echo Your user folder is located at: %userprofile% >> "%userprofile%\ZacAttack\ASIT\UserInfo.txt"
echo You are logged in as %username% >> "%userprofile%\ZacAttack\ASIT\UserInfo.txt"
 echo OS Architecture is: %os% >> "%userprofile%\ZacAttack\ASIT\Information.txt" <nul
 echo Processor Architecture is: %processor_architecture% >> "%userprofile%\ZacAttack\ASIT\Information.txt" <nul
 echo Number of processors are: %number_of_processors% >> "%userprofile%\ZacAttack\ASIT\Information.txt" <nul
 echo Your user folder is located at: %userprofile% >> "%userprofile%\ZacAttack\ASIT\Information.txt" <nul
 echo You are logged in as %username% >> "%userprofile%\ZacAttack\ASIT\Information.txt" <nul
 echo Windows is installed on drive %homedrive% >> "%userprofile%\ZacAttack\ASIT\Information.txt" <nul
 systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"Original Install Date" >> "%userprofile%\ZacAttack\ASIT\Information.txt" <nul
 powershell -command "Get-Volume | Out-File -Encoding utf8 -FilePath %userprofile%\ZacAttack\ASIT\Components\Drive-Info.txt | Out-Null" 
 powershell -command "manage-bde -status | Out-File -Encoding ascii -FilePath %userprofile%\ZacAttack\ASIT\BitLockerInfo.txt
 powershell -command "Get-PnpDevice -PresentOnly | Where-Object { $_.InstanceId -match '^USB' } | Out-File  -Encoding utf8 -FilePath %userprofile%\ZacAttack\ASIT\Components\PNP-Info.txt | Out-Null"
 powershell -command "Get-Volume | Out-File -Encoding ascii -FilePath %userprofile%\ZacAttack\ASIT\Components\Drive-Info.txt" 
 powershell -command "Get-CimInstance CIM_VideoController | Format-Table Name,DeviceID,PNPDeviceID,DriverDate,DriverVersion,InfFilename | Out-File -Encoding utf8 -FilePath %userprofile%\ZacAttack\ASIT\Components\GPU-Simplified.txt | Out-Null"
 powershell -command "Get-CimInstance CIM_VideoController | Out-File -Encoding utf8 -FilePath %userprofile%\ZacAttack\ASIT\Components\GPU.txt | Out-Null"
 powershell -command "Get-CimInstance -Class CIM_Processor -ErrorAction Stop | Out-File -Encoding utf8 -FilePath %userprofile%\ZacAttack\ASIT\Components\CPU.txt | Out-Null"
 powershell -command "Get-CimInstance win32_physicalmemory | Format-Table Manufacturer,Banklabel,Configuredclockspeed,Devicelocator -autosize | Out-File -encoding utf8 -FilePath %userprofile%\ZacAttack\ASIT\Components\Ram.txt | Out-Null"
 systeminfo | findstr /B /C:"Total Physical Memory" >> %userprofile%\ZacAttack\ASIT\Components\Ram.txt"
 powershell -command "Get-WmiObject -class "Win32_SystemSlot" | Out-file -Encoding utf8 -FilePath %userprofile%\ZacAttack\ASIT\Components\Motherboard-PCI-Information.txt | Out-Null"
 powershell -command "Get-CimInstance win32_sounddevice | Out-File -Encoding utf8 -FilePath %userprofile%\ZacAttack\ASIT\Components\Audio-Devices.txt | Out-Null"
 powershell -command "Get-Tpm | Format-Table TPMPresent,TpmReady,TpmEnabled | Out-File -Encoding utf8 -FilePath %userprofile%\ZacAttack\ASIT\Components\TPM.txt | Out-Null"
 powershell -command "Confirm-SecureBootUEFI | Out-File -encoding ascii -filepath %userprofile%\ZacAttack\ASIT\Secure-Boot.txt"
 powershell -command "Get-WindowsOptionalFeature -Online | format-table State,Enabled | Out-File -encoding ascii -filepath %userprofile%\ZacAttack\ASIT\OptionalFeatures.txt"
:doend
 cls
 taskkill /f /im firstlogonanim.exe
 echo Thank you for using ASIT (Dump Only Mode) on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\Components\TPM.txt <nul
 echo Thank you for using ASIT (Dump Only Mode) on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\Install-and-Last-Boot-Date.txt <nul
 echo Thank you for using ASIT (Dump Only Mode) on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\Secure-Boot.txt <nul
 echo Thank you for using ASIT (Dump Only Mode) on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\Information.txt <nul
 echo Thank you for using ASIT (Dump Only Mode) on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\Components\GPU.txt <nul
 echo Thank you for using ASIT (Dump Only Mode) on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\Components\Drive-Info.txt <nul
 echo Thank you for using ASIT (Dump Only Mode) on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\Components\PNP-Info.txt <nul
 echo Thank you for using ASIT (Dump Only Mode) on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\Components\GPU-Simplified.txt <nul
 echo Thank you for using ASIT (Dump Only Mode) on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\Components\CPU.txt <nul
 echo Thank you for using ASIT (Dump Only Mode) on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\Components\Ram.txt <nul
 echo Thank you for using ASIT (Dump Only Mode) on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\Components\Ram-Serial-Number.txt <nul
 echo Thank you for using ASIT (Dump Only Mode) on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\Components\Motherboard-PCI-Information.txt <nul
 echo Thank you for using ASIT (Dump Only Mode) on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\Components\Motherboard-Information.txt <nul
 echo Thank you for using ASIT (Dump Only Mode) on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\Components\Audio-Devices.txt <nul
 echo Thank you for using ASIT (Dump Only Mode) on %date%-%time::=-% >> %userprofile%\ZacAttack\ASIT\BitLockerInfo.txt <nul
 powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'ASIT by ZacAttack', 'Dumping is complete!', [System.Windows.Forms.ToolTipIcon]::None)}"
 cls
 echo %brandingver% %asitver% (Dump Only Mode) %versionbypass%
 echo.
 echo Dumping is complete, press any key to return to the menu.
 pause
 goto MENU
 
   goto errorcatch









































