@echo off

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
 echo Dumping is complete, press any key to open the folder.
pause
start %userprofile%\ZacAttack\ASIT
exit