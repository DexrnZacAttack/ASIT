@echo off
set asitdate=3/25/2022
set asitver=4

for /f "tokens=2 delims=[" %%# in ('ver') do (
    for /f "tokens=2,3 delims=. " %%a in ("%%#") do set r_vers=%%a%%b
)


if %r_vers% LSS 10 (
color 4f
  echo You must run ASIT on Windows 10 or higher, as Windows 8.1 and lower do not have some of the commands that are used in this program, even with the latest Windows Management Framework, it does not work properly. Please upgrade to Windows 10 or higher to use this software.
  pause
  exit /b 1
)

chcp 65001
title ASIT by ZacAttack
:Customizecheck
if exist %temp%\ASITCustomization.txt (
    type %temp%\ASITCustomization.txt|cmd
goto START
) else (
    goto START
)
:start
cls
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set thedate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/: " %%a in ('time /t') do (set ttime=%%a-%%b)
cls
title ASIT by ZacAttack

    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo 
    ) else (
color 4f
        echo Failure: Administrator permissions not detected, This application needs administrator permissions to get information like the TPM device and other devices on this computer.
pause
exit
    )



:MENU
cls
echo Welcome to ASIT by ZacAttack Version %asitver% released on %asitdate%
echo.
echo.
echo [1] Start ASIT
echo [2] Start ASIT (Dump Only Mode)
echo [3] Open the ASIT folder
echo [4] View your Windows Product Key
echo [5] Settings
echo [6] Join my Discord server
echo [7] About ASIT
echo [8] Exit to Command Prompt/Powershell
echo.
choice /c 12345678 /m "Choose your option"
if %ERRORLEVEL% EQU 1 goto ASIT
if %ERRORLEVEL% EQU 2 goto ASITDO
if %ERRORLEVEL% EQU 3 goto ASITFOLDER
if %ERRORLEVEL% EQU 4 goto PRODUCTKEY
if %ERRORLEVEL% EQU 5 goto CUSTOMIZATION
if %ERRORLEVEL% EQU 6 goto DISCORD
if %ERRORLEVEL% EQU 7 goto ABOUTASIT
if %ERRORLEVEL% EQU 8 goto ASITEXIT
:ASITEXIT
echo ASIT by ZacAttack Version %asitver%
echo.
echo [1] Exit to Command Prompt
echo [2] Exit to Powershell
echo [E] Back to menu
choice /c 12E /m "Choose your option"
if %ERRORLEVEL% EQU 1 goto EXITTOCMD
if %ERRORLEVEL% EQU 2 goto EXITTOPOWERSHELL
if %ERRORLEVEL% EQU E goto MENU
goto MENU








:EXITTOCMD
color 0f
title Command Prompt
cls
cmd

:EXITTOPOWERSHELL
color 0f
title Windows Powershell
cls
powershell







:DISCORD
start https://discord.gg/ysaGMquqek
goto MENU











:ABOUTASIT
cls
echo ASIT Version %asitver% by ZacAttack
echo Released on %asitdate%
echo.
echo ASIT is a program that collects system information and displays them to you, as well as dumping that information into multiple text files.
echo.
echo More information is in my Discord Server which can be accessed by pressing any key and then pressing 6.
pause
Goto MENU











:ASITDELETEQUESTION
choice /c YN /m "Are you sure you want to delete the ASIT folder and all of it's contents?"
if %ERRORLEVEL% EQU Y goto ASITDELETE
if %ERRORLEVEL% EQU N goto MENU
:ASITDELETE
rd %userprofile%\ASIT\ /s /q
goto MENU












:0f
echo color 0f > %temp%\ASITCustomization.txt|type %temp%\ASITCustomization.txt|cmd
goto MENU
:1f
echo color 1f > %temp%\ASITCustomization.txt|type %temp%\ASITCustomization.txt|cmd
goto MENU
:9f
echo color 9f > %temp%\ASITCustomization.txt|type %temp%\ASITCustomization.txt|cmd
goto MENU
:57
echo color 57 > %temp%\ASITCustomization.txt|type %temp%\ASITCustomization.txt|cmd
goto MENU
:27
echo color 27 > %temp%\ASITCustomization.txt|type %temp%\ASITCustomization.txt|cmd
goto MENU
:0c
echo color 0c > %temp%\ASITCustomization.txt|type %temp%\ASITCustomization.txt|cmd
goto MENU
:20
echo color 20 > %temp%\ASITCustomization.txt|type %temp%\ASITCustomization.txt|cmd
goto MENU
:80
echo color 80 > %temp%\ASITCustomization.txt|type %temp%\ASITCustomization.txt|cmd
goto MENU
:4f
echo color 4f > %temp%\ASITCustomization.txt|type %temp%\ASITCustomization.txt|cmd
goto MENU





:THEME
cls
echo ASIT by ZacAttack Version %asitver%
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




:ASITDELETECHECK
cls
if exist %userprofile%\ASIT (
GOTO ASITDELETEQUESTION
) else (
echo The ASIT Folder was not found.
pause
goto MENU
)




:CUSTOMIZATION
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo [1] Change the theme of ASIT
echo [2] Delete the ASIT Folder
echo [E] Return to menu
echo.
choice /c 12E /m "Choose your option"
if %ERRORLEVEL% EQU 1 goto THEME
if %ERRORLEVEL% EQU 2 goto ASITDELETECHECK
if %ERRORLEVEL% EQU E goto MENU
goto MENU









:PRODUCTKEY
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Please make sure you are not using this command in a public area, as leaking your product key may get it disabled by Microsoft as it is not supposed to be shared with people. 
echo.
echo I am not responsible for any leaked product keys.
echo.
choice /c yn /m "Show Product Key?"
if %ERRORLEVEL% EQU 1 goto CONFIRMEDPRODUCTKEY
if %ERRORLEVEL% EQU 2 goto MENU








:CONFIRMEDPRODUCTKEY
cls
echo ASIT by ZacAttack Version %asitver%
echo.
wmic path SoftwareLicensingService get OA3xOriginalProductKey
echo.
echo If there is no product key and it just says "OA3xOriginalProductKey" than your product key could not be found or it is linked to a digital license connected to your Microsoft Account.
pause
GOTO MENU








:ASITFOLDER
cls
echo ASIT by ZacAttack Version %asitver%
echo.
if exist %userprofile%\ASIT (
    start %userprofile%\ASIT
goto MENU
) else (
    echo The ASIT folder was not found, please run ASIT or ASIT Dump Only mode.
pause
goto MENU
)



:SKIPBACKUP
echo ASIT by ZacAttack Version %asitver%
echo.
md "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\" 
cls
powershell mkdir "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%"
cls
GOTO ASITSKIPPEDBACKUP





:ASIT
cls
echo A System Information Tool (ASIT) by ZacAttack Version %asitver%
timeout /t 3 /nobreak > nul
cls
if exist %userprofile%\ASIT (
    goto BACKUP
) else (
GOTO SKIPBACKUP
)
:BACKUP
rem this creates the computer-info directory and some directories inside, then scans for any earlier files from earlier scans and backs them up.
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
md "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\" 
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
powershell mkdir "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%"
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\CPU.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\GPU.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%

cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Ram.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
 
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Information.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%

cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
powershell xcopy /Y %userprofile%\ASIT\Computer-Info\Components\TPM.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
powershell xcopy /Y %userprofile%\ASIT\Computer-Info\Components\Secure-Boot.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%

cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
del %userprofile%\ASIT\Computer-Info\Information.txt /q
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
del %userprofile%\ASIT\Computer-Info\Secure-Boot.txt /q
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them. 
del %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt /q
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
del %userprofile%\ASIT\Computer-Info\Components\GPU.txt /q 
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
del %userprofile%\ASIT\Computer-Info\Components\TPM.txt /q 
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
del %userprofile%\ASIT\Computer-Info\Components\CPU.txt /q 
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
del %userprofile%\ASIT\Computer-Info\Components\Ram.txt /q 
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
del %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt /q 
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
del %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt /q 
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
del %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt /q 
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
del %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt /q 
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
del %userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt /q 
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
del %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt /q 
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them.
del %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt /q
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Looking for earlier dump files and adding the date to them. 
del %userprofile%\ASIT\Computer-Info\Product-Key.txt /q
cls





:ASITSKIPPEDBACKUP
rem this gets general information like windows version, if the bios is UEFI or legacy.
echo ASIT by ZacAttack Version %asitver%
echo.
echo Getting information...

powershell -command "Get-ComputerInfo | format-table OsArchitecture,BiosFirmwareType,PowerPlatformRole | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Information.txt" < nul

powershell -command "get-ciminstance Win32_OperatingSystem | Format-Table BuildNumber,Version,SystemDirectory | Out-File -Encoding ascii -append -FilePath %userprofile%\ASIT\Computer-Info\Information.txt"

echo OS Architecture is: %os% >> "%userprofile%\ASIT\Computer-Info\Information.txt"

echo Processor Architecture is: %processor_architecture% >> "%userprofile%\ASIT\Computer-Info\Information.txt"

echo Number of processors are: %number_of_processors% >> "%userprofile%\ASIT\Computer-Info\Information.txt"

echo Your user folder is located at: %userprofile% >> "%userprofile%\ASIT\Computer-Info\Information.txt"

echo You are logged in as %username% >> "%userprofile%\ASIT\Computer-Info\Information.txt"

echo Windows is installed on drive %homedrive% >> "%userprofile%\ASIT\Computer-Info\Information.txt"

systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"Original Install Date" >> "%userprofile%\ASIT\Computer-Info\Information.txt" < nul

cls
echo ASIT by ZacAttack Version %asitver%
echo.
type "%userprofile%\ASIT\Computer-Info\Information.txt"
echo.
echo That is some general information about your computer, the area where it says "Bios Firmware Type" if it says Bios,
echo That means your motherboard's bios is set to legacy mode or Windows was installed using legacy mode instead of UEFI,
echo This breaks compatibility with Windows 11, as Windows 11 requires UEFI.
echo You can scroll up and down to look at the information.
pause
cls





echo ASIT by ZacAttack Version %asitver%
echo.
echo Getting Install and Last Boot Date...
powershell -command "(Get-CimInstance Win32_OperatingSystem).InstallDate | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt"
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Getting Install and Last Boot Date...
powershell -command "Get-CimInstance -ClassName Win32_OperatingSystem | select LastBootUpTime | Out-File -Encoding ascii -append -FilePath %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt"
cls
echo ASIT by ZacAttack Version %asitver%
echo.
type %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt
echo The top date is when Windows was installed, the bottom date is the time when you last turned on your computer.
pause
cls





rem this gets information about drive and partitions.
echo ASIT by ZacAttack Version %asitver%
echo.
echo Getting drive and partition information...
powershell -command "Get-Volume | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt" 
cls
echo ASIT by ZacAttack Version %asitver%
echo.
type %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt
echo.
echo That is information about the drives you have plugged in, their partitions, and how much disk space they have left, you can scroll up and down to look at the information.
pause
cls





rem this gets information about the plugged in usb devices
echo ASIT by ZacAttack Version %asitver%
echo.
echo Getting USB Info...
powershell -command "Get-PnpDevice -PresentOnly | Where-Object { $_.InstanceId -match '^USB' } | Out-File  -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt"
cls
echo ASIT by ZacAttack Version %asitver%
echo.
type %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt
echo.
echo That is information about your current plugged in USB Devices, you can scroll up and down to look at the information.
pause
cls












rem this just warns you about sensitive information


:againnnn
echo ASIT by ZacAttack Version %asitver%
echo.
echo The next commands will show and dump potentially sensitive information about your computer like serial numbers, the creator is not responsible for any leaked serial numbers, are you sure you want to show and dump this information?
echo.
echo Pressing N will only do the commands that doesn't show and dump the serial numbers.
echo.
echo Waiting 5 seconds to give you time to read what this is saying.
timeout /t 5 > nul
echo.
choice /c yn /m "Show and dump sensitive information like serial numbers?"
if %ERRORLEVEL% EQU 1 goto sensitive
if %ERRORLEVEL% EQU 2 goto lateron
goto :againnnn


rem this is the first part of Lateron, this first set of commands gets the gpu's information, and outputs it into a file, then types that file out.

:lateron
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Getting GPU information...
powershell -command "Get-CimInstance CIM_VideoController | Format-Table Name,DeviceID,PNPDeviceID,DriverDate,DriverVersion,InfFilename | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt"
powershell -command "Get-CimInstance CIM_VideoController | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\GPU.txt"
cls
echo ASIT by ZacAttack Version %asitver%
echo.
type "%userprofile%\ASIT\Computer-Info\Components\GPU.txt
echo Advanced GPU Information ▲
echo ===============================
echo GPU Simplified Information ▼
type "%userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt"
echo That is your GPU and it's information, there is more information if you scroll up.
pause
cls





rem cpu information check


echo ASIT by ZacAttack Version %asitver%
echo.
echo Getting CPU information...
powershell -command "Get-CimInstance -Class CIM_Processor -ErrorAction Stop | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\CPU.txt"
cls
echo ASIT by ZacAttack Version %asitver%
echo.
type %userprofile%\ASIT\Computer-Info\Components\CPU.txt
echo.
echo That is your CPU and it's information.
pause
cls






rem ram information check
echo ASIT by ZacAttack Version %asitver%
echo.
echo Getting Ram information...
powershell -command "Get-CimInstance win32_physicalmemory | Format-Table Manufacturer,Banklabel,Configuredclockspeed,Devicelocator -autosize | Out-File -encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Ram.txt" < nul
systeminfo | findstr /B /C:"Total Physical Memory" >> %userprofile%\ASIT\Computer-Info\Components\Ram.txt < nul
cls
echo ASIT by ZacAttack Version %asitver%
echo.
type %userprofile%\ASIT\Computer-Info\Components\Ram.txt
echo.
echo That is your Ram and it's information.
pause
cls






rem pci check
echo ASIT by ZacAttack Version %asitver%
echo.
echo Getting information about the PCI slots on the motherboard...
powershell -command "Get-WmiObject -class "Win32_SystemSlot" | Out-file -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt"
cls
echo ASIT by ZacAttack Version %asitver%
echo.
type %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt
echo.
echo That is your Motherboard's PCI Slots and its information, you can scroll up and down to look at the information.
pause
cls






rem audio information
echo ASIT by ZacAttack Version %asitver%
echo.
echo Getting audio device information...
powershell -command "Get-CimInstance win32_sounddevice | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt
cls
echo ASIT by ZacAttack Version %asitver%
echo.
type %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt
echo.
echo These are the sound devices that are installed in your computer, you can scroll up and down to look at the information.
pause
cls




rem TPM information
echo ASIT by ZacAttack Version %asitver%
echo.
echo Getting TPM Device information...
powershell -command "Get-Tpm | Format-Table TPMPresent,TpmReady,TpmEnabled | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\TPM.txt"
cls
echo ASIT by ZacAttack Version %asitver%
echo.
type %userprofile%\ASIT\Computer-Info\Components\TPM.txt
echo.
echo This is information about the TPM device installed in your computer, if everything is true, that means TPM is enabled and you might be able to upgrade to Windows 11 if all of the other system requirements are met.
pause
cls




echo ASIT by ZacAttack Version %asitver%
echo.
echo Getting Secure Boot information...
powershell -command "Confirm-SecureBootUEFI | Out-File -encoding ascii -filepath %userprofile%\ASIT\Computer-Info\Components\Secure-Boot.txt"
cls
echo ASIT by ZacAttack Version %asitver%
echo.
type %userprofile%\ASIT\Computer-Info\Components\Secure-Boot.txt
echo.
echo This is information about Secure Boot, if it says False, than it is not enabled, if it says True, than it is enabled, if it says nothing or shows an error, than Secure Boot may not be supported on your motherboard.
pause
cls








rem this is the end of the script, first it appends the dates to the end of all of the files, then it opens the folder.

:timer
cls
echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\TPM.txt
echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Information.txt
echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt
echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\GPU.txt
echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt
echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt
echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt
echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\CPU.txt
echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Ram.txt
echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt
echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt
echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt
echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt
echo Thank you for using ASIT on %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Secure-Boot.txt
echo ASIT by ZacAttack Version %asitver%
echo.
echo All information has been dumped in %userprofile%\ASIT\, press any key to return to the menu.
pause
goto MENU
exit




rem this gets motherboard and bios information.
:sensitive
cls
echo ASIT by ZacAttack Version %asitver%
echo.
echo Getting motherboard and BIOS information...
powershell -command "Get-CimInstance Win32_BIOS | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt"
cls
echo ASIT by ZacAttack Version %asitver%
echo.
type "%userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt"
echo.
echo Here is your motherboard's information.
pause
cls

rem this gets ram information including serial numbers.
echo ASIT by ZacAttack Version %asitver%
echo.
echo Getting RAM serial numbers and RAM location information.
powershell -command "Get-CimInstance win32_physicalmemory | Format-Table Manufacturer,Banklabel,Devicelocator,Serialnumber -autosize | Out-File -Encoding ascii -FilePath %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt"
cls
echo ASIT by ZacAttack Version %asitver%
echo.
type %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt
echo.
echo This is your Ram's serial number, if it is all 0's then Powershell could not find your Ram's serial number.
pause
cls
goto lateron










:DOSKIPBACKUP
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
echo.
md "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\" 
cls
powershell mkdir "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%"
cls
GOTO DOASITSKIPPEDBACKUP





:ASITDO
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
echo.
if exist %userprofile%\ASIT (
    goto DOBACKUP
) else (
GOTO DOSKIPBACKUP
)
:DOBACKUP
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
md "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\" 
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
powershell mkdir "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%"
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\CPU.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\GPU.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%

cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Ram.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
 
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Information.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
powershell xcopy  /Y %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%

cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
powershell xcopy /Y %userprofile%\ASIT\Computer-Info\Components\TPM.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
powershell xcopy /Y %userprofile%\ASIT\Computer-Info\Components\Secure-Boot.txt "%userprofile%\ASIT\Computer-Info\Components\Previous-Dumps\%thedate%-%ttime%

cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
del %userprofile%\ASIT\Computer-Info\Information.txt /q
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
del %userprofile%\ASIT\Computer-Info\Secure-Boot.txt /q
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode) 
del %userprofile%\ASIT\Computer-Info\Install-and-Last-Boot-Date.txt /q
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
del %userprofile%\ASIT\Computer-Info\Components\GPU.txt /q 
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
del %userprofile%\ASIT\Computer-Info\Components\TPM.txt /q 
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
del %userprofile%\ASIT\Computer-Info\Components\CPU.txt /q 
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
del %userprofile%\ASIT\Computer-Info\Components\Ram.txt /q 
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
del %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt /q 
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
del %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt /q 
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
del %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt /q 
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
del %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt /q 
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
del %userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt /q 
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
del %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt /q 
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
del %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt /q
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
del %userprofile%\ASIT\Computer-Info\Product-Key.txt /q
cls
:DOASITSKIPPEDBACKUP



echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
echo.
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


:doagainnnn
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
echo.
echo The next commands will dump potentially sensitive information about your computer like serial numbers, the creator is not responsible for any leaked serial numbers, are you sure you want to dump this information?
echo.
echo Pressing N will only do the commands that dont dump the serial numbers.
echo.
echo Waiting 5 seconds to give you time to read what this is saying.
timeout /t 5 > nul
echo.
choice /c yn /m "Dump sensitive information like serial numbers?"
if %ERRORLEVEL% EQU 1 goto dosensitive
if %ERRORLEVEL% EQU 2 goto dolateron
goto :doagainnnn



:dolateron
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
echo.
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

:dotimer
cls
echo Thank you for using ASIT (Dump Only Mode) on %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\TPM.txt <nul
echo Thank you for using ASIT (Dump Only Mode) on %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Information.txt <nul
echo Thank you for using ASIT (Dump Only Mode) on %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\GPU.txt <nul
echo Thank you for using ASIT (Dump Only Mode) on %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Drive-Info.txt <nul
echo Thank you for using ASIT (Dump Only Mode) on %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\USB-Info.txt <nul
echo Thank you for using ASIT (Dump Only Mode) on %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\GPU-Simplified.txt <nul
echo Thank you for using ASIT (Dump Only Mode) on %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\CPU.txt <nul
echo Thank you for using ASIT (Dump Only Mode) on %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Ram.txt <nul
echo Thank you for using ASIT (Dump Only Mode) on %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt <nul
echo Thank you for using ASIT (Dump Only Mode) on %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Motherboard-PCI-Information.txt <nul
echo Thank you for using ASIT (Dump Only Mode) on %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt <nul
echo Thank you for using ASIT (Dump Only Mode) on %date%-%time::=-% >> %userprofile%\ASIT\Computer-Info\Components\Audio-Devices.txt <nul
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
echo.
echo Dumping is complete, press any key to return to the menu.
pause
goto MENU





rem this gets motherboard and bios information.
:dosensitive
cls
echo ASIT by ZacAttack Version %asitver% (Dump Only Mode)
echo.
powershell -command "Get-CimInstance Win32_BIOS | Out-File -Encoding utf8 -FilePath %userprofile%\ASIT\Computer-Info\Components\Motherboard-Information.txt | Out-Null"
powershell -command "Get-CimInstance win32_physicalmemory | Format-Table Manufacturer,Banklabel,Devicelocator,Serialnumber -autosize | Out-File -Encoding utf8 -FilePath %userprofile%\ASIT\Computer-Info\Components\Ram-Serial-Number.txt | Out-Null"
goto dolateron




































