@echo off
title ASIT by ZacAttack (Dump Only Mode)
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set thedate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/: " %%a in ('time /t') do (set ttime=%%a-%%b)

    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo 
    ) else (
        echo Failure: Administrator permissions not detected, please run this file as administrator.
pause
exit
    )

:start
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
md "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\" 
cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
powershell mkdir "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%"
cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\CPU.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\GPU.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%

cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Ram.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
 
cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Information.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%

cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
powershell xcopy /Y %userprofile%\ASIT\Computer-Info\Components\TPM.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
powershell xcopy /Y %userprofile%\ASIT\Computer-Info\Components\Secure-Boot.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%

cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
del %userprofile%\ASIT\Computer-Info\Information.txt /q
cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
del %userprofile%\ASIT\Computer-Info\Secure-Boot.txt /q
cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode) 
del %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt /q
cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
del %userprofile%\ASIT\Computer-Info\Components\GPU.txt /q 
cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
del %userprofile%\ASIT\Computer-Info\Components\TPM.txt /q 
cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
del %userprofile%\ASIT\Computer-Info\Components\CPU.txt /q 
cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
del %userprofile%\ASIT\Computer-Info\Components\Ram.txt /q 
cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
del %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt /q 
cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
del %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt /q 
cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
del %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt /q 
cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
del %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt /q 
cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
del %userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt /q 
cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
del %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt /q 
cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
del %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt /q
cls
echo ASIT By ZacAttack Version 3 (Dump Only Mode)
del %userprofile%\ASIT\Computer-Info\Product-Key.txt /q
cls




echo ASIT By ZacAttack Version 3 (Dump Only Mode)
powershell -command "Get-ComputerInfo | format-table OsArchitecture,BiosFirmwareType,PowerPlatformRole | Out-File -Encoding utf8 -FilePath %userprofile%\ASIT\Computer-Info\Information.txt | Out-Null"
echo OS Architecture is: %os% >> "%userprofile%\ASIT\Computer-Info\Information.txt" <nul
echo Processor Architecture is: %processor_architecture% >> "%userprofile%\ASIT\Computer-Info\Information.txt" <nul
echo Number of processors are: %number_of_processors% >> "%userprofile%\ASIT\Computer-Info\Information.txt" <nul
echo Your user folder is located at: %userprofile% >> "%userprofile%\ASIT\Computer-Info\Information.txt" <nul
echo You are logged in as %username% >> "%userprofile%\ASIT\Computer-Info\Information.txt" <nul
echo Windows is installed on drive %homedrive% >> "%userprofile%\ASIT\Computer-Info\Information.txt" <nul
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"Original Install Date" >> "%userprofile%\ASIT\Computer-Info\Information.txt" <nul
powershell -command "Get-Volume | Out-File -Encoding utf8 -FilePath %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt | Out-Null" 






rem this gets information about the plugged in usb devices

powershell -command "Get-PnpDevice -PresentOnly | Where-Object { $_.InstanceId -match '^USB' } | Out-File  -Encoding utf8 -FilePath %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt | Out-Null"
powershell -command "Get-Volume | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt" 












rem this just warns you about sensitive information


:againnnn
cls
echo A System Information Tool by ZacAttack Version 3
echo.
echo The next commands will dump potentially sensitive information about your computer like serial numbers, the creator is not responsible for any leaked serial numbers, are you sure you want to dump this information?
echo.
echo Pressing N will only do the commands that dont dump the serial numbers.
echo.
echo Waiting 5 seconds to give you time to read what this is saying.
timeout /t 5 > nul
echo.
choice /c yn /m "Dump sensitive information like serial numbers?"
if %ERRORLEVEL% EQU 1 goto sensitive
if %ERRORLEVEL% EQU 2 goto lateron
goto :againnnn



:lateron
cls
echo A System Information Tool by ZacAttack Version 2
powershell -command "Get-CimInstance CIM_VideoController | Format-Table Name,DeviceID,PNPDeviceID,DriverDate,DriverVersion,InfFilename | Out-File -Encoding utf8 -FilePath %userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt | Out-Null"
powershell -command "Get-CimInstance CIM_VideoController | Out-File -Encoding utf8 -FilePath %userprofile%\ASIT\Computer-Info\Components\GPU.txt | Out-Null"
powershell -command "Get-CimInstance -Class CIM_Processor -ErrorAction Stop | Out-File -Encoding utf8 -FilePath %userprofile%\ASIT\Computer-Info\Components\CPU.txt | Out-Null"
powershell -command "Get-CimInstance win32_physicalmemory | Format-Table Manufacturer,Banklabel,Configuredclockspeed,Devicelocator -autosize | Out-File -encoding utf8 -FilePath %userprofile%\ASIT\Computer-Info\Components\Ram.txt | Out-Null"
systeminfo | findstr /B /C:"Total Physical Memory" >> %userprofile%\ASIT\Computer-Info\Components\Ram.txt"
powershell -command "Get-WmiObject -class "Win32_SystemSlot" | Out-file -Encoding utf8 -FilePath %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt | Out-Null"
powershell -command "Get-CimInstance win32_sounddevice | Out-File -Encoding utf8 -FilePath %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt | Out-Null"
powershell -command "Get-Tpm | Format-Table TPMPresent,TpmReady,TpmEnabled | Out-File -Encoding utf8 -FilePath %userprofile%\ASIT\Computer-Info\Components\TPM.txt | Out-Null"
powershell -command "Confirm-SecureBootUEFI | Out-File -encoding ascii -filepath %userprofile%\ASIT\Computer-Info\Components\Secure-Boot.txt"




rem this is the end of the script, first it appends the dates to the end of all of the files, then it opens the folder.

:timer
cls
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\TPM.txt <nul
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Information.txt <nul
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\GPU.txt <nul
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt <nul
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt <nul
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt <nul
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\CPU.txt <nul
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Ram.txt <nul
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt <nul
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt <nul
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt <nul
echo %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt <nul
start %userprofile%\ASIT\Computer-Info\
exit




rem this gets motherboard and bios information.
:sensitive
cls
echo A System Information Tool by ZacAttack Version 2
powershell -command "Get-CimInstance Win32_BIOS | Out-File -Encoding utf8 -FilePath %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt | Out-Null"
powershell -command "Get-CimInstance win32_physicalmemory | Format-Table Manufacturer,Banklabel,Devicelocator,Serialnumber -autosize | Out-File -Encoding utf8 -FilePath %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt | Out-Null"
goto lateron
























